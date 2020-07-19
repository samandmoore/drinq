import 'package:drinq/models/models.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditRecipeScreen extends HookWidget {
  final Recipe recipe;

  const EditRecipeScreen({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: recipe.name);

    return ScreenScaffold(
      title: 'Edit recipe',
      body: ListView(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'What\'s this drink called?',
            ),
            onSubmitted: (value) {
              recipesProvider
                  .read(context)
                  .update(recipe.id, draft: RecipeDraft(name: value));
              Nav.of(context).pop(true);
            },
          ),
        ],
      ),
    );
  }
}
