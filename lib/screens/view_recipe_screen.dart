import 'package:drinq/models/api.dart';
import 'package:drinq/models/models.dart';
import 'package:drinq/screens/edit_recipe_screen.dart';
import 'package:drinq/utils/body_text.dart';
import 'package:drinq/utils/header.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/stretch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class ViewRecipeScreen extends HookWidget {
  const ViewRecipeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipe = useProvider(
      currentRecipeProvider(context.read(currentRecipeIdProvider).state),
    );

    return ScreenScaffold(
      title: 'Recipe',
      body: recipe.when(
        data: (data) {
          return _RecipeDataView(recipe: data);
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
        error: (e, __) {
          return Center(child: Text(e.toString()));
        },
      ),
    );
  }
}

class _RecipeDataView extends StatelessWidget {
  final Recipe recipe;

  const _RecipeDataView({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Header(recipe.name),
        BodyText(recipe.toString()),
        Builder(
          builder: (context) => OutlineButton(
            child: Text('edit'),
            onPressed: () async {
              final edited = await Nav.of(context)
                  .presentScreen((_) => EditRecipeScreen(recipe: recipe));
              if (edited == true) {
                Scaffold.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('Recipe updated!')));
              }
            },
          ),
        ),
        OutlineButton(
          child: Text('delete'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (bottomSheetContext) {
                return _DeleteSheet(recipe: recipe);
              },
            );
          },
        ),
      ],
    );
  }
}

class DeleteRecipeNotifier extends StateNotifier<AsyncValue<bool>> {
  final Api api;

  DeleteRecipeNotifier({@required this.api}) : super(AsyncValue.data(false));

  Future<void> deleteRecipe(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await api.deleteRecipe(id);
      return true;
    });
  }
}

final _deleteRecipeProvider = StateNotifierProvider.autoDispose(
  (ref) => DeleteRecipeNotifier(api: ref.read(apiProvider)),
);

class _DeleteSheet extends HookWidget {
  final Recipe recipe;

  const _DeleteSheet({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      onChange: (AsyncValue<bool> result) {
        if (result.data?.value ?? false) {
          context.refresh(recipesProvider);
          Nav.of(context)..pop()..pop();
        }
      },
      provider: _deleteRecipeProvider.state,
      child: useProvider(_deleteRecipeProvider.state).when(
        data: (_) => _ConfirmDelete(recipe: recipe),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (e, __) => Center(child: Text(e.toString())),
      ),
    );
  }
}

class _ConfirmDelete extends StatelessWidget {
  const _ConfirmDelete({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BodyText(
          'are you sure you want to delete this recipe?',
        ),
        HStretch(
          child: OutlineButton(
            child: Text('yes'),
            onPressed: () {
              context.read(_deleteRecipeProvider).deleteRecipe(recipe.id);
            },
          ),
        ),
        HStretch(
          child: OutlineButton(
            child: Text('no'),
            onPressed: () {
              Nav.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
