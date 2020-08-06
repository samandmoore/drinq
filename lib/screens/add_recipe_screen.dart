import 'package:drinq/models/api.dart';
import 'package:drinq/models/models.dart';
import 'package:drinq/utils/body_text.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class AddRecipeNotifier extends StateNotifier<AsyncValue<bool>> {
  final Api api;

  AddRecipeNotifier({@required this.api}) : super(AsyncValue.data(false));

  Future<void> createRecipe(RecipeDraft draft) async {
    // TODO: change state to a more complex type with space for form errors
    if (draft.name == null || draft.name.isEmpty) {
      return;
    }

    if (draft.steps == null || draft.steps.isEmpty) {
      return;
    }

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await api.createRecipe(draft);
      return true;
    });
  }
}

final _addRecipeProvider = StateNotifierProvider.autoDispose(
  (ref) => AddRecipeNotifier(api: ref.read(apiProvider)),
);

class AddRecipeScreen extends HookWidget {
  const AddRecipeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final stepController = useTextEditingController();

    return ProviderListener(
      onChange: (AsyncValue<bool> result) {
        if (result.data?.value ?? false) {
          context.refresh(recipesProvider);
          Nav.of(context)..pop(true);
        }
      },
      provider: _addRecipeProvider.state,
      child: ScreenScaffold(
        title: 'Add recipe',
        body: useProvider(_addRecipeProvider.state).when(
          data: (_) {
            return ListView(
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
                  onPressed: () async {
                    context.read(_addRecipeProvider).createRecipe(
                          RecipeDraft(
                            name: nameController.value.text,
                            steps: stepController.value.text,
                          ),
                        );
                  },
                ),
              ],
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (e, __) => Center(child: Text(e.toString())),
        ),
      ),
    );
  }
}
