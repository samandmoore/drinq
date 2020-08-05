import 'package:drinq/models/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'models.freezed.dart';
part 'models.g.dart';

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

final recipesProvider = FutureProvider<List<Recipe>>((ref) {
  final api = ref.read(apiProvider);
  return api.fetchRecipes();
});

final currentRecipeIdProvider = StateProvider<String>((_) => null);
final currentRecipeProvider =
    Provider.autoDispose.family<AsyncValue<Recipe>, String>((ref, id) {
  final recipes = ref.watch(recipesProvider);
  return recipes.whenData((value) => value.singleWhere((r) => r.id == id));
});

@freezed
abstract class RecipeDraft with _$RecipeDraft {
  const factory RecipeDraft({
    @required String name,
    @required String steps,
  }) = _RecipeDraft;
}

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @required String id,
    @required String name,
    @required String steps,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
