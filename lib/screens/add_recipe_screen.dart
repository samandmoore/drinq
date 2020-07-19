import 'package:drinq/models/models.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRecipeScreen extends HookWidget {
  const AddRecipeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();

    return ScreenScaffold(
      title: 'Add recipe',
      body: ListView(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'What\'s this drink called?',
            ),
            onSubmitted: (value) {
              recipesProvider.read(context).add(RecipeDraft(name: value));
              Nav.of(context).pop(true);
            },
          ),
        ],
      ),
    );
  }
}
