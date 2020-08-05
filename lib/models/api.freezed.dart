// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RecipeData _$RecipeDataFromJson(Map<String, dynamic> json) {
  return _RecipeData.fromJson(json);
}

class _$RecipeDataTearOff {
  const _$RecipeDataTearOff();

// ignore: unused_element
  _RecipeData call({@required List<Recipe> recipes}) {
    return _RecipeData(
      recipes: recipes,
    );
  }
}

// ignore: unused_element
const $RecipeData = _$RecipeDataTearOff();

mixin _$RecipeData {
  List<Recipe> get recipes;

  Map<String, dynamic> toJson();
  $RecipeDataCopyWith<RecipeData> get copyWith;
}

abstract class $RecipeDataCopyWith<$Res> {
  factory $RecipeDataCopyWith(
          RecipeData value, $Res Function(RecipeData) then) =
      _$RecipeDataCopyWithImpl<$Res>;
  $Res call({List<Recipe> recipes});
}

class _$RecipeDataCopyWithImpl<$Res> implements $RecipeDataCopyWith<$Res> {
  _$RecipeDataCopyWithImpl(this._value, this._then);

  final RecipeData _value;
  // ignore: unused_field
  final $Res Function(RecipeData) _then;

  @override
  $Res call({
    Object recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed ? _value.recipes : recipes as List<Recipe>,
    ));
  }
}

abstract class _$RecipeDataCopyWith<$Res> implements $RecipeDataCopyWith<$Res> {
  factory _$RecipeDataCopyWith(
          _RecipeData value, $Res Function(_RecipeData) then) =
      __$RecipeDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Recipe> recipes});
}

class __$RecipeDataCopyWithImpl<$Res> extends _$RecipeDataCopyWithImpl<$Res>
    implements _$RecipeDataCopyWith<$Res> {
  __$RecipeDataCopyWithImpl(
      _RecipeData _value, $Res Function(_RecipeData) _then)
      : super(_value, (v) => _then(v as _RecipeData));

  @override
  _RecipeData get _value => super._value as _RecipeData;

  @override
  $Res call({
    Object recipes = freezed,
  }) {
    return _then(_RecipeData(
      recipes: recipes == freezed ? _value.recipes : recipes as List<Recipe>,
    ));
  }
}

@JsonSerializable()
class _$_RecipeData implements _RecipeData {
  const _$_RecipeData({@required this.recipes}) : assert(recipes != null);

  factory _$_RecipeData.fromJson(Map<String, dynamic> json) =>
      _$_$_RecipeDataFromJson(json);

  @override
  final List<Recipe> recipes;

  @override
  String toString() {
    return 'RecipeData(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeData &&
            (identical(other.recipes, recipes) ||
                const DeepCollectionEquality().equals(other.recipes, recipes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(recipes);

  @override
  _$RecipeDataCopyWith<_RecipeData> get copyWith =>
      __$RecipeDataCopyWithImpl<_RecipeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecipeDataToJson(this);
  }
}

abstract class _RecipeData implements RecipeData {
  const factory _RecipeData({@required List<Recipe> recipes}) = _$_RecipeData;

  factory _RecipeData.fromJson(Map<String, dynamic> json) =
      _$_RecipeData.fromJson;

  @override
  List<Recipe> get recipes;
  @override
  _$RecipeDataCopyWith<_RecipeData> get copyWith;
}
