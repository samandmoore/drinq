// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RecipeDraftTearOff {
  const _$RecipeDraftTearOff();

// ignore: unused_element
  _RecipeDraft call({@required String name, @required String steps}) {
    return _RecipeDraft(
      name: name,
      steps: steps,
    );
  }
}

// ignore: unused_element
const $RecipeDraft = _$RecipeDraftTearOff();

mixin _$RecipeDraft {
  String get name;
  String get steps;

  $RecipeDraftCopyWith<RecipeDraft> get copyWith;
}

abstract class $RecipeDraftCopyWith<$Res> {
  factory $RecipeDraftCopyWith(
          RecipeDraft value, $Res Function(RecipeDraft) then) =
      _$RecipeDraftCopyWithImpl<$Res>;
  $Res call({String name, String steps});
}

class _$RecipeDraftCopyWithImpl<$Res> implements $RecipeDraftCopyWith<$Res> {
  _$RecipeDraftCopyWithImpl(this._value, this._then);

  final RecipeDraft _value;
  // ignore: unused_field
  final $Res Function(RecipeDraft) _then;

  @override
  $Res call({
    Object name = freezed,
    Object steps = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      steps: steps == freezed ? _value.steps : steps as String,
    ));
  }
}

abstract class _$RecipeDraftCopyWith<$Res>
    implements $RecipeDraftCopyWith<$Res> {
  factory _$RecipeDraftCopyWith(
          _RecipeDraft value, $Res Function(_RecipeDraft) then) =
      __$RecipeDraftCopyWithImpl<$Res>;
  @override
  $Res call({String name, String steps});
}

class __$RecipeDraftCopyWithImpl<$Res> extends _$RecipeDraftCopyWithImpl<$Res>
    implements _$RecipeDraftCopyWith<$Res> {
  __$RecipeDraftCopyWithImpl(
      _RecipeDraft _value, $Res Function(_RecipeDraft) _then)
      : super(_value, (v) => _then(v as _RecipeDraft));

  @override
  _RecipeDraft get _value => super._value as _RecipeDraft;

  @override
  $Res call({
    Object name = freezed,
    Object steps = freezed,
  }) {
    return _then(_RecipeDraft(
      name: name == freezed ? _value.name : name as String,
      steps: steps == freezed ? _value.steps : steps as String,
    ));
  }
}

class _$_RecipeDraft implements _RecipeDraft {
  const _$_RecipeDraft({@required this.name, @required this.steps})
      : assert(name != null),
        assert(steps != null);

  @override
  final String name;
  @override
  final String steps;

  @override
  String toString() {
    return 'RecipeDraft(name: $name, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeDraft &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.steps, steps) ||
                const DeepCollectionEquality().equals(other.steps, steps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(steps);

  @override
  _$RecipeDraftCopyWith<_RecipeDraft> get copyWith =>
      __$RecipeDraftCopyWithImpl<_RecipeDraft>(this, _$identity);
}

abstract class _RecipeDraft implements RecipeDraft {
  const factory _RecipeDraft({@required String name, @required String steps}) =
      _$_RecipeDraft;

  @override
  String get name;
  @override
  String get steps;
  @override
  _$RecipeDraftCopyWith<_RecipeDraft> get copyWith;
}

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

class _$RecipeTearOff {
  const _$RecipeTearOff();

// ignore: unused_element
  _Recipe call(
      {@required String id, @required String name, @required String steps}) {
    return _Recipe(
      id: id,
      name: name,
      steps: steps,
    );
  }
}

// ignore: unused_element
const $Recipe = _$RecipeTearOff();

mixin _$Recipe {
  String get id;
  String get name;
  String get steps;

  Map<String, dynamic> toJson();
  $RecipeCopyWith<Recipe> get copyWith;
}

abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call({String id, String name, String steps});
}

class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object steps = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      steps: steps == freezed ? _value.steps : steps as String,
    ));
  }
}

abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String steps});
}

class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object steps = freezed,
  }) {
    return _then(_Recipe(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      steps: steps == freezed ? _value.steps : steps as String,
    ));
  }
}

@JsonSerializable()
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {@required this.id, @required this.name, @required this.steps})
      : assert(id != null),
        assert(name != null),
        assert(steps != null);

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$_$_RecipeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String steps;

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recipe &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.steps, steps) ||
                const DeepCollectionEquality().equals(other.steps, steps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(steps);

  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecipeToJson(this);
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {@required String id,
      @required String name,
      @required String steps}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get steps;
  @override
  _$RecipeCopyWith<_Recipe> get copyWith;
}
