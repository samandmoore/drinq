import 'package:drinq/models/api.dart';
import 'package:drinq/models/models.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'add_recipe_screen.freezed.dart';

extension on String {
  bool get isNullOrBlank => this == null || this.trim().length == 0;
}

@freezed
abstract class State implements _$State {
  const State._();

  const factory State({
    @nullable String nameError,
    @nullable String stepsError,
    @Default(AsyncValue<bool>.data(false)) AsyncValue<bool> result,
  }) = _State;

  bool hasErrors() {
    return [
      nameError,
      stepsError,
    ].any((e) => e != null);
  }
}

class AddRecipeNotifier extends StateNotifier<_State> {
  final Api api;
  final VoidCallback refreshRecipes;

  AddRecipeNotifier({
    @required this.api,
    @required this.refreshRecipes,
  }) : super(_State());

  Future<void> createRecipe(RecipeDraft draft) async {
    state = state.copyWith(
      nameError: draft.name.isNullOrBlank ? 'Required' : null,
      stepsError: draft.steps.isNullOrBlank ? 'Required' : null,
    );

    if (state.hasErrors()) return;

    state = state.copyWith(result: AsyncValue.loading());
    state = state.copyWith(
      result: await AsyncValue.guard(() async {
        await api.createRecipe(draft);
        refreshRecipes();
        return true;
      }),
    );
  }
}

final addRecipeProvider = StateNotifierProvider.autoDispose(
  (ref) => AddRecipeNotifier(
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
    final state = useProvider(addRecipeProvider.state);

    return ProviderListener(
      onChange: (_State state) {
        if (state.result.data?.value ?? false) {
          Nav.of(context)..pop(true);
        }
      },
      provider: addRecipeProvider.state,
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
                VSpace(byFactorOf: 2),
                TextField(
                  controller: stepController,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'How do you make this drink?',
                    errorText: state.stepsError,
                  ),
                ),
                OutlineButton(
                  child: Text('save'),
                  onPressed: () async {
                    context.read(addRecipeProvider).createRecipe(
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
