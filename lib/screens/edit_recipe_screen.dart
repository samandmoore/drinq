import 'package:drinq/models/models.dart';
import 'package:drinq/utils/body_text.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditRecipeScreen extends HookWidget {
  final Recipe recipe;

  const EditRecipeScreen({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: recipe.name);
    final stepController = useTextEditingController(text: recipe.steps);

    return ScreenScaffold(
      title: 'Edit recipe',
      body: ListView(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'What\'s this drink called?',
            ),
          ),
          VSpace(byFactorOf: 2),
          BodyText('Steps'),
          TextField(
            controller: stepController,
            maxLines: null,
          ),
          OutlineButton(
            child: Text('save'),
            onPressed: () {
              context.read(recipesProvider).update(
                    recipe.id,
                    draft: RecipeDraft(
                      name: nameController.value.text,
                      steps: stepController.value.text,
                    ),
                  );
              Nav.of(context).pop(true);
            },
          ),
        ],
      ),
    );
  }
}
