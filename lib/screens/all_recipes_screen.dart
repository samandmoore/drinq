import 'package:drinq/models/models.dart';
import 'package:drinq/nav.dart';
import 'package:drinq/screens/add_recipe_screen.dart';
import 'package:drinq/screens/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllRecipesScreen extends StatelessWidget {
  const AllRecipesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'All recipes',
      body: ListView(
        children: [
          Title('recipes'),
          RecipeList(),
          OutlineButton(
            child: Text('log out'),
            onPressed: () => userProvider.read(context).logout(),
          )
        ],
      ),
      fab: Builder(builder: (context) {
        return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              await Nav.of(context).presentScreen((_) => AddRecipeScreen());
              Scaffold.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text('Recipe added!')));
            });
      }),
    );
  }
}

class Title extends StatelessWidget {
  final String text;

  const Title(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class RecipeList extends StatelessWidget {
  const RecipeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer((_, read) {
      final recipes = read(recipesProvider.state);
      if (recipes.isEmpty) {
        return Empty();
      }

      return ListView.builder(
        shrinkWrap: true,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return RecipeListRow(recipe: recipe);
        },
      );
    });
  }
}

class Empty extends StatelessWidget {
  const Empty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('No recipes yet, add one!');
  }
}

class RecipeListRow extends StatelessWidget {
  final Recipe recipe;

  const RecipeListRow({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(recipe.toString());
  }
}
