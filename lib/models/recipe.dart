import 'package:drinq/models/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

final recipesProvider = FutureProvider<List<Recipe>>((ref) {
  final api = ref.read(apiProvider);
  return api.fetchRecipes();
});

final currentRecipeIdProvider = StateProvider<String>((_) => null);
final currentRecipeProvider = Provider.autoDispose.family<AsyncValue<Recipe>, String>((ref, id) {
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
