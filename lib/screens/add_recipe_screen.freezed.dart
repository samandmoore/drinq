// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_recipe_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddRecipeScreenStateTearOff {
  const _$AddRecipeScreenStateTearOff();

// ignore: unused_element
  _AddRecipeScreenState call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _AddRecipeScreenState(
      nameError: nameError,
      stepsError: stepsError,
      result: result,
    );
  }
}

// ignore: unused_element
const $AddRecipeScreenState = _$AddRecipeScreenStateTearOff();

mixin _$AddRecipeScreenState {
  @nullable
  String get nameError;
  @nullable
  String get stepsError;
  AsyncValue<bool> get result;

  $AddRecipeScreenStateCopyWith<AddRecipeScreenState> get copyWith;
}

abstract class $AddRecipeScreenStateCopyWith<$Res> {
  factory $AddRecipeScreenStateCopyWith(AddRecipeScreenState value,
          $Res Function(AddRecipeScreenState) then) =
      _$AddRecipeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$AddRecipeScreenStateCopyWithImpl<$Res>
    implements $AddRecipeScreenStateCopyWith<$Res> {
  _$AddRecipeScreenStateCopyWithImpl(this._value, this._then);

  final AddRecipeScreenState _value;
  // ignore: unused_field
  final $Res Function(AddRecipeScreenState) _then;

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

abstract class _$AddRecipeScreenStateCopyWith<$Res>
    implements $AddRecipeScreenStateCopyWith<$Res> {
  factory _$AddRecipeScreenStateCopyWith(_AddRecipeScreenState value,
          $Res Function(_AddRecipeScreenState) then) =
      __$AddRecipeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$AddRecipeScreenStateCopyWithImpl<$Res>
    extends _$AddRecipeScreenStateCopyWithImpl<$Res>
    implements _$AddRecipeScreenStateCopyWith<$Res> {
  __$AddRecipeScreenStateCopyWithImpl(
      _AddRecipeScreenState _value, $Res Function(_AddRecipeScreenState) _then)
      : super(_value, (v) => _then(v as _AddRecipeScreenState));

  @override
  _AddRecipeScreenState get _value => super._value as _AddRecipeScreenState;

  @override
  $Res call({
    Object nameError = freezed,
    Object stepsError = freezed,
    Object result = freezed,
  }) {
    return _then(_AddRecipeScreenState(
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      stepsError:
          stepsError == freezed ? _value.stepsError : stepsError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_AddRecipeScreenState extends _AddRecipeScreenState {
  const _$_AddRecipeScreenState(
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
    return 'AddRecipeScreenState(nameError: $nameError, stepsError: $stepsError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRecipeScreenState &&
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
  _$AddRecipeScreenStateCopyWith<_AddRecipeScreenState> get copyWith =>
      __$AddRecipeScreenStateCopyWithImpl<_AddRecipeScreenState>(
          this, _$identity);
}

abstract class _AddRecipeScreenState extends AddRecipeScreenState {
  const _AddRecipeScreenState._() : super._();
  const factory _AddRecipeScreenState(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result}) = _$_AddRecipeScreenState;

  @override
  @nullable
  String get nameError;
  @override
  @nullable
  String get stepsError;
  @override
  AsyncValue<bool> get result;
  @override
  _$AddRecipeScreenStateCopyWith<_AddRecipeScreenState> get copyWith;
}
