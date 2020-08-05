// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeData _$_$_RecipeDataFromJson(Map<String, dynamic> json) {
  return _$_RecipeData(
    recipes: (json['recipes'] as List)
        ?.map((e) =>
            e == null ? null : Recipe.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_RecipeDataToJson(_$_RecipeData instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
