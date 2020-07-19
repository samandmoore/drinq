// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call({@required String name}) {
    return _User(
      name: name,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get name;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_User implements _User {
  const _$_User({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'User(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User({@required String name}) = _$_User;

  @override
  String get name;
  @override
  _$UserCopyWith<_User> get copyWith;
}

class _$RecipeDraftTearOff {
  const _$RecipeDraftTearOff();

// ignore: unused_element
  _RecipeDraft call({@required String name}) {
    return _RecipeDraft(
      name: name,
    );
  }
}

// ignore: unused_element
const $RecipeDraft = _$RecipeDraftTearOff();

mixin _$RecipeDraft {
  String get name;

  $RecipeDraftCopyWith<RecipeDraft> get copyWith;
}

abstract class $RecipeDraftCopyWith<$Res> {
  factory $RecipeDraftCopyWith(
          RecipeDraft value, $Res Function(RecipeDraft) then) =
      _$RecipeDraftCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$RecipeDraftCopyWithImpl<$Res> implements $RecipeDraftCopyWith<$Res> {
  _$RecipeDraftCopyWithImpl(this._value, this._then);

  final RecipeDraft _value;
  // ignore: unused_field
  final $Res Function(RecipeDraft) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$RecipeDraftCopyWith<$Res>
    implements $RecipeDraftCopyWith<$Res> {
  factory _$RecipeDraftCopyWith(
          _RecipeDraft value, $Res Function(_RecipeDraft) then) =
      __$RecipeDraftCopyWithImpl<$Res>;
  @override
  $Res call({String name});
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
  }) {
    return _then(_RecipeDraft(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_RecipeDraft implements _RecipeDraft {
  const _$_RecipeDraft({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'RecipeDraft(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeDraft &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$RecipeDraftCopyWith<_RecipeDraft> get copyWith =>
      __$RecipeDraftCopyWithImpl<_RecipeDraft>(this, _$identity);
}

abstract class _RecipeDraft implements RecipeDraft {
  const factory _RecipeDraft({@required String name}) = _$_RecipeDraft;

  @override
  String get name;
  @override
  _$RecipeDraftCopyWith<_RecipeDraft> get copyWith;
}

class _$RecipeTearOff {
  const _$RecipeTearOff();

// ignore: unused_element
  _Recipe call({@required String id, @required String name}) {
    return _Recipe(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $Recipe = _$RecipeTearOff();

mixin _$Recipe {
  String get id;
  String get name;

  $RecipeCopyWith<Recipe> get copyWith;
}

abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call({String id, String name});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
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
  }) {
    return _then(_Recipe(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_Recipe implements _Recipe {
  const _$_Recipe({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recipe &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);
}

abstract class _Recipe implements Recipe {
  const factory _Recipe({@required String id, @required String name}) =
      _$_Recipe;

  @override
  String get id;
  @override
  String get name;
  @override
  _$RecipeCopyWith<_Recipe> get copyWith;
}
