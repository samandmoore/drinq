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
        error: (_, __) {
          return Center(child: Text('Oops!'));
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
                return Column(
                  children: [
                    BodyText(
                      'are you sure you want to delete this recipe?',
                    ),
                    HStretch(
                      child: OutlineButton(
                        child: Text('yes'),
                        onPressed: () async {
                          await context
                              .read(apiProvider)
                              .deleteRecipe(recipe.id);
                          context.refresh(recipesProvider);
                          Nav.of(context)..pop()..pop();
                        },
                      ),
                    ),
                    HStretch(
                      child: OutlineButton(
                        child: Text('no'),
                        onPressed: () {
                          Nav.of(bottomSheetContext).pop();
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
