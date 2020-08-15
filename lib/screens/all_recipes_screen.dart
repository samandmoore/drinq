import 'package:drinq/models/models.dart';
import 'package:drinq/screens/add_recipe_screen.dart';
import 'package:drinq/screens/view_recipe_screen.dart';
import 'package:drinq/utils/body_text.dart';
import 'package:drinq/utils/header.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllRecipesScreen extends StatelessWidget {
  const AllRecipesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'All recipes',
      body: RefreshIndicator(
        onRefresh: () => context.refresh(recipesProvider),
        child: ListView(
          children: [
            Header('recipes'),
            RecipeList(),
            OutlineButton(
              child: Text('log out'),
              onPressed: () => context.read(authProvider).clearToken(),
            )
          ],
        ),
      ),
      fab: Builder(builder: (context) {
        return FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            final recipeAdded = await Nav.of(context)
                .presentScreen<bool>((_) => AddRecipeScreen());
            if (recipeAdded == true) {
              Scaffold.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text('Recipe added!')));
            }
          },
        );
      }),
    );
  }
}

class RecipeList extends StatelessWidget {
  const RecipeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer((_, read) {
      final recipes = read(recipesProvider);

      return recipes.when(
        data: (data) {
          if (data.isEmpty) {
            return Empty();
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              final recipe = data[index];
              return RecipeListRow(
                recipe: recipe,
                includeDivider: index < data.length,
              );
            },
          );
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
        error: (e, __) {
          return Center(
            child: Column(
              children: [
                Text(e.toString()),
                OutlineButton(
                  child: Text('Retry'),
                  onPressed: () => context.refresh(recipesProvider),
                )
              ],
            ),
          );
        },
      );
    });
  }
}

class Empty extends StatelessWidget {
  const Empty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BodyText('No recipes yet, add one!');
  }
}

class RecipeListRow extends StatelessWidget {
  final Recipe recipe;
  final bool includeDivider;

  const RecipeListRow({
    Key key,
    @required this.recipe,
    this.includeDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: BodyText(recipe.name),
          onTap: () {
            context.read(currentRecipeIdProvider).state = recipe.id;
            Nav.of(context).pushScreen(
              (_) => ViewRecipeScreen(),
            );
          },
          trailing: Icon(Icons.navigate_next),
        ),
        Divider(),
      ],
    );
  }
}
