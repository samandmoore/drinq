import 'dart:math';

import 'package:drinq/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:localstorage/localstorage.dart';
import 'package:uuid/uuid.dart';

part 'api.freezed.dart';
part 'api.g.dart';

final apiProvider = Provider<Api>((_) => Api(storage: LocalStorage('data')));

class Api {
  final LocalStorage _storage;

  const Api({LocalStorage storage}) : _storage = storage;

  Future<List<Recipe>> fetchRecipes() async {
    return (await _loadData()).recipes;
  }

  Future<void> createRecipe(RecipeDraft draft) async {
    final data = await _loadData();
    var recipes = data.recipes;
    recipes = [
      ...recipes,
      Recipe(
        id: Uuid().v4(),
        name: draft.name,
        steps: draft.steps,
      ),
    ];

    return _saveData(data.copyWith(recipes: recipes));
  }

  Future<void> updateRecipe(String id, {@required RecipeDraft draft}) async {
    final data = await _loadData();
    var recipes = data.recipes;
    recipes = [
      for (final recipe in recipes)
        if (recipe.id == id)
          Recipe(
            id: id,
            name: draft.name,
            steps: draft.steps,
          )
        else
          recipe
    ];

    return _saveData(data.copyWith(recipes: recipes));
  }

  Future<void> deleteRecipe(String id) async {
    final data = await _loadData();
    var recipes = data.recipes;
    recipes = recipes.where((r) => r.id != id).toList();
    return _saveData(data.copyWith(recipes: recipes));
  }

  Future<RecipeData> _loadData() async {
    await Future.delayed(Duration(milliseconds: Random().nextInt(2000)));

    final Map<String, dynamic> data = _storage.getItem('recipes');
    return data == null ? RecipeData(recipes: []) : RecipeData.fromJson(data);
  }

  Future<void> _saveData(RecipeData data) async {
    await Future.delayed(Duration(milliseconds: Random().nextInt(2000)));

    _storage.setItem('recipes', data.toJson());
  }
}

@freezed
abstract class RecipeData with _$RecipeData {
  const factory RecipeData({
    @required List<Recipe> recipes,
  }) = _RecipeData;

  factory RecipeData.fromJson(Map<String, dynamic> json) =>
      _$RecipeDataFromJson(json);
}