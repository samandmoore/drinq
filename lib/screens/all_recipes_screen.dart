import 'package:drinq/models/auth.dart';
import 'package:drinq/models/recipe.dart';
import 'package:drinq/screens/add_recipe_screen.dart';
import 'package:drinq/screens/view_recipe_screen.dart';
import 'package:drinq/utils/body_text.dart';
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
            const RecipeList(),
            OutlineButton(
              onPressed: () => context.read(authProvider).clearToken(),
              child: const Text('log out'),
            )
          ],
        ),
      ),
      fab: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () async {
            final recipeAdded = await Nav.of(context)
                .presentScreen<bool>((_) => const AddRecipeScreen());
            if (recipeAdded == true) {
              Scaffold.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(const SnackBar(content: Text('Recipe added!')));
            }
          },
          child: const Icon(Icons.add),
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
            return const Empty();
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
          return const Center(child: CircularProgressIndicator());
        },
        error: (e, __) {
          return Center(
            child: Column(
              children: [
                Text(e.toString()),
                OutlineButton(
                  onPressed: () => context.refresh(recipesProvider),
                  child: const Text('Retry'),
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
    return const BodyText('No recipes yet, add one!');
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
            Nav.of(context).pushScreen<void>(
              (_) => const ViewRecipeScreen(),
            );
          },
          trailing: const Icon(Icons.navigate_next),
        ),
        const Divider(),
      ],
    );
  }
}
