import 'package:drinq/models/api.dart';
import 'package:drinq/models/recipe.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/space.dart';
import 'package:drinq/utils/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'add_recipe_screen.freezed.dart';

@freezed
abstract class AddRecipeScreenState implements _$AddRecipeScreenState {
  const AddRecipeScreenState._();

  const factory AddRecipeScreenState({
    @nullable String nameError,
    @nullable String stepsError,
    @Default(AsyncValue<bool>.data(false)) AsyncValue<bool> result,
  }) = _AddRecipeScreenState;

  bool hasErrors() {
    return [
      nameError,
      stepsError,
    ].any((e) => e != null);
  }
}

class AddRecipeScreenNotifier extends StateNotifier<AddRecipeScreenState> {
  final Api api;
  final VoidCallback refreshRecipes;

  AddRecipeScreenNotifier({
    @required this.api,
    @required this.refreshRecipes,
  }) : super(const AddRecipeScreenState());

  Future<void> createRecipe(RecipeDraft draft) async {
    state = state.copyWith(
      nameError: draft.name.isNullOrBlank ? 'Required' : null,
      stepsError: draft.steps.isNullOrBlank ? 'Required' : null,
    );

    if (state.hasErrors()) return;

    state = state.copyWith(result: const AsyncValue.loading());
    state = state.copyWith(
      result: await AsyncValue.guard(() async {
        await api.createRecipe(draft);
        refreshRecipes();
        return true;
      }),
    );
  }
}

final addRecipeScreenNotifierProvider = StateNotifierProvider.autoDispose(
  (ref) => AddRecipeScreenNotifier(
    api: ref.read(apiProvider),
    refreshRecipes: () => ref.container.refresh(recipesProvider),
  ),
);

class AddRecipeScreen extends HookWidget {
  const AddRecipeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final stepController = useTextEditingController();
    final state = useProvider(addRecipeScreenNotifierProvider.state);

    return ProviderListener(
      onChange: (state) {
        if (state.result.data?.value ?? false) {
          Nav.of(context).pop(true);
        }
      },
      provider: addRecipeScreenNotifierProvider.state,
      child: ScreenScaffold(
        title: 'Add recipe',
        body: state.result.when(
          data: (_) {
            return ListView(
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'What\'s this drink called?',
                    errorText: state.nameError,
                  ),
                ),
                const VSpace(byFactorOf: 2),
                TextField(
                  controller: stepController,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'How do you make this drink?',
                    errorText: state.stepsError,
                  ),
                ),
                OutlineButton(
                  onPressed: () async {
                    context.read(addRecipeScreenNotifierProvider).createRecipe(
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
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, __) => Center(child: Text(e.toString())),
        ),
      ),
    );
  }
}
