import 'package:drinq/models/models.dart';
import 'package:drinq/utils/body_text.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRecipeScreen extends HookWidget {
  const AddRecipeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final stepController = useTextEditingController();

    return ScreenScaffold(
      title: 'Add recipe',
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
              context.read(recipesProvider).add(
                    RecipeDraft(
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
