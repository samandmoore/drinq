import 'package:drinq/models/api.dart';
import 'package:drinq/models/recipe.dart';
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
          return const Center(child: CircularProgressIndicator());
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
        OutlineButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (bottomSheetContext) {
                return _DeleteSheet(recipe: recipe);
              },
            );
          },
          child: const Text('delete'),
        ),
      ],
    );
  }
}

class DeleteRecipeModel extends StateNotifier<AsyncValue<bool>> {
  final Api api;
  final VoidCallback refreshRecipes;

  DeleteRecipeModel({
    @required this.api,
    @required this.refreshRecipes,
  }) : super(const AsyncValue.data(false));

  Future<void> deleteRecipe(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await api.deleteRecipe(id);
      refreshRecipes();
      return true;
    });
  }
}

final deleteRecipeProvider = StateNotifierProvider.autoDispose(
  (ref) => DeleteRecipeModel(
    api: ref.read(apiProvider),
    refreshRecipes: () => ref.container.refresh(recipesProvider),
  ),
);

class _DeleteSheet extends HookWidget {
  final Recipe recipe;

  const _DeleteSheet({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<bool>>(
      onChange: (result) {
        if (result.data?.value ?? false) {
          Nav.of(context)..pop()..pop();
        }
      },
      provider: deleteRecipeProvider.state,
      child: useProvider(deleteRecipeProvider.state).when(
        data: (_) => _ConfirmDelete(recipe: recipe),
        loading: () => const Center(child: CircularProgressIndicator()),
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
        const BodyText(
          'are you sure you want to delete this recipe?',
        ),
        HStretch(
          child: OutlineButton(
            onPressed: () {
              context.read(deleteRecipeProvider).deleteRecipe(recipe.id);
            },
            child: const Text('yes'),
          ),
        ),
        HStretch(
          child: OutlineButton(
            onPressed: () {
              Nav.of(context).pop();
            },
            child: const Text('no'),
          ),
        ),
      ],
    );
  }
}
