// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginScreenStateTearOff {
  const _$LoginScreenStateTearOff();

// ignore: unused_element
  _LoginScreenState call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _LoginScreenState(
      emailError: emailError,
      passwordError: passwordError,
      result: result,
    );
  }
}

// ignore: unused_element
const $LoginScreenState = _$LoginScreenStateTearOff();

mixin _$LoginScreenState {
  @nullable
  String get emailError;
  @nullable
  String get passwordError;
  AsyncValue<bool> get result;

  $LoginScreenStateCopyWith<LoginScreenState> get copyWith;
}

abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$LoginScreenStateCopyWithImpl<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  final LoginScreenState _value;
  // ignore: unused_field
  final $Res Function(LoginScreenState) _then;

  @override
  $Res call({
    Object emailError = freezed,
    Object passwordError = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      emailError:
          emailError == freezed ? _value.emailError : emailError as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String,
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

abstract class _$LoginScreenStateCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$LoginScreenStateCopyWith(
          _LoginScreenState value, $Res Function(_LoginScreenState) then) =
      __$LoginScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$LoginScreenStateCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res>
    implements _$LoginScreenStateCopyWith<$Res> {
  __$LoginScreenStateCopyWithImpl(
      _LoginScreenState _value, $Res Function(_LoginScreenState) _then)
      : super(_value, (v) => _then(v as _LoginScreenState));

  @override
  _LoginScreenState get _value => super._value as _LoginScreenState;

  @override
  $Res call({
    Object emailError = freezed,
    Object passwordError = freezed,
    Object result = freezed,
  }) {
    return _then(_LoginScreenState(
      emailError:
          emailError == freezed ? _value.emailError : emailError as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_LoginScreenState extends _LoginScreenState {
  const _$_LoginScreenState(
      {@nullable this.emailError,
      @nullable this.passwordError,
      this.result = const AsyncValue<bool>.data(false)})
      : assert(result != null),
        super._();

  @override
  @nullable
  final String emailError;
  @override
  @nullable
  final String passwordError;
  @JsonKey(defaultValue: const AsyncValue<bool>.data(false))
  @override
  final AsyncValue<bool> result;

  @override
  String toString() {
    return 'LoginScreenState(emailError: $emailError, passwordError: $passwordError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginScreenState &&
            (identical(other.emailError, emailError) ||
                const DeepCollectionEquality()
                    .equals(other.emailError, emailError)) &&
            (identical(other.passwordError, passwordError) ||
                const DeepCollectionEquality()
                    .equals(other.passwordError, passwordError)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailError) ^
      const DeepCollectionEquality().hash(passwordError) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$LoginScreenStateCopyWith<_LoginScreenState> get copyWith =>
      __$LoginScreenStateCopyWithImpl<_LoginScreenState>(this, _$identity);
}

abstract class _LoginScreenState extends LoginScreenState {
  const _LoginScreenState._() : super._();
  const factory _LoginScreenState(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result}) = _$_LoginScreenState;

  @override
  @nullable
  String get emailError;
  @override
  @nullable
  String get passwordError;
  @override
  AsyncValue<bool> get result;
  @override
  _$LoginScreenStateCopyWith<_LoginScreenState> get copyWith;
}
