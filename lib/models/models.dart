import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'models.freezed.dart';

/* models
- User
- Recipe(ingredients, steps, servings)
- Ingredient(name, amount, unit)
- Step(text)
*/

class UserNotifier extends StateNotifier<User> {
  UserNotifier(User state) : super(state);

  void login(User user) {
    state = user;
  }

  void logout() {
    state = null;
  }
}

final userProvider = StateNotifierProvider((_) => UserNotifier(null));

@freezed
abstract class User with _$User {
  const factory User({
    @required String name,
  }) = _User;
}

final recipesProvider = StateNotifierProvider((_) => RecipeList());

class RecipeList extends StateNotifier<List<Recipe>> {
  RecipeList([List<Recipe> state]) : super(state ?? []);

  void add(Recipe recipe) {
    state = [
      ...state,
      recipe,
    ];
  }
}

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @required String name,
  }) = _Recipe;
}
