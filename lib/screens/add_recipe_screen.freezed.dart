// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_recipe_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StateTearOff {
  const _$StateTearOff();

// ignore: unused_element
  _State call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _State(
      nameError: nameError,
      stepsError: stepsError,
      result: result,
    );
  }
}

// ignore: unused_element
const $State = _$StateTearOff();

mixin _$State {
  @nullable
  String get nameError;
  @nullable
  String get stepsError;
  AsyncValue<bool> get result;

  $StateCopyWith<State> get copyWith;
}

abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$StateCopyWithImpl<$Res> implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  final State _value;
  // ignore: unused_field
  final $Res Function(State) _then;

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

abstract class _$StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object nameError = freezed,
    Object stepsError = freezed,
    Object result = freezed,
  }) {
    return _then(_State(
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      stepsError:
          stepsError == freezed ? _value.stepsError : stepsError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_State implements _State {
  const _$_State(
      {@nullable this.nameError,
      @nullable this.stepsError,
      this.result = const AsyncValue<bool>.data(false)})
      : assert(result != null);

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
    return 'State(nameError: $nameError, stepsError: $stepsError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _State &&
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
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);
}

abstract class _State implements State {
  const factory _State(
      {@nullable String nameError,
      @nullable String stepsError,
      AsyncValue<bool> result}) = _$_State;

  @override
  @nullable
  String get nameError;
  @override
  @nullable
  String get stepsError;
  @override
  AsyncValue<bool> get result;
  @override
  _$StateCopyWith<_State> get copyWith;
}
