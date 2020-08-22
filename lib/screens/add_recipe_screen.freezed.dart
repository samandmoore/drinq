// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_recipe_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddRecipeStateTearOff {
  const _$AddRecipeStateTearOff();

// ignore: unused_element
  _AddRecipeState call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _AddRecipeState(
      nameError: nameError,
      stepsError: stepsError,
      result: result,
    );
  }
}

// ignore: unused_element
const $AddRecipeState = _$AddRecipeStateTearOff();

mixin _$AddRecipeState {
  @nullable
  String get nameError;
  @nullable
  String get stepsError;
  AsyncValue<bool> get result;

  $AddRecipeStateCopyWith<AddRecipeState> get copyWith;
}

abstract class $AddRecipeStateCopyWith<$Res> {
  factory $AddRecipeStateCopyWith(
          AddRecipeState value, $Res Function(AddRecipeState) then) =
      _$AddRecipeStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$AddRecipeStateCopyWithImpl<$Res>
    implements $AddRecipeStateCopyWith<$Res> {
  _$AddRecipeStateCopyWithImpl(this._value, this._then);

  final AddRecipeState _value;
  // ignore: unused_field
  final $Res Function(AddRecipeState) _then;

  @override
  $Res call({
    Object nameError = freezed,
    Object stepsError = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      stepsError:
          stepsError == freezed ? _value.stepsError : stepsError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }

  @override
  $AsyncValueCopyWith<bool, $Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $AsyncValueCopyWith<bool, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

abstract class _$AddRecipeStateCopyWith<$Res>
    implements $AddRecipeStateCopyWith<$Res> {
  factory _$AddRecipeStateCopyWith(
          _AddRecipeState value, $Res Function(_AddRecipeState) then) =
      __$AddRecipeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$AddRecipeStateCopyWithImpl<$Res>
    extends _$AddRecipeStateCopyWithImpl<$Res>
    implements _$AddRecipeStateCopyWith<$Res> {
  __$AddRecipeStateCopyWithImpl(
      _AddRecipeState _value, $Res Function(_AddRecipeState) _then)
      : super(_value, (v) => _then(v as _AddRecipeState));

  @override
  _AddRecipeState get _value => super._value as _AddRecipeState;

  @override
  $Res call({
    Object nameError = freezed,
    Object stepsError = freezed,
    Object result = freezed,
  }) {
    return _then(_AddRecipeState(
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      stepsError:
          stepsError == freezed ? _value.stepsError : stepsError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_AddRecipeState extends _AddRecipeState {
  const _$_AddRecipeState(
      {@nullable this.nameError,
      @nullable this.stepsError,
      this.result = const AsyncValue<bool>.data(false)})
      : assert(result != null),
        super._();

  @override
  @nullable
  final String nameError;
  @override
  @nullable
  final String stepsError;
  @JsonKey(defaultValue: const AsyncValue<bool>.data(false))
  @override
  final AsyncValue<bool> result;

  @override
  String toString() {
    return 'AddRecipeState(nameError: $nameError, stepsError: $stepsError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRecipeState &&
            (identical(other.nameError, nameError) ||
                const DeepCollectionEquality()
                    .equals(other.nameError, nameError)) &&
            (identical(other.stepsError, stepsError) ||
                const DeepCollectionEquality()
                    .equals(other.stepsError, stepsError)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameError) ^
      const DeepCollectionEquality().hash(stepsError) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$AddRecipeStateCopyWith<_AddRecipeState> get copyWith =>
      __$AddRecipeStateCopyWithImpl<_AddRecipeState>(this, _$identity);
}

abstract class _AddRecipeState extends AddRecipeState {
  const _AddRecipeState._() : super._();
  const factory _AddRecipeState(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result}) = _$_AddRecipeState;

  @override
  @nullable
  String get nameError;
  @override
  @nullable
  String get stepsError;
  @override
  AsyncValue<bool> get result;
  @override
  _$AddRecipeStateCopyWith<_AddRecipeState> get copyWith;
}
