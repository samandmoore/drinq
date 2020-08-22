// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _LoginState(
      emailError: emailError,
      passwordError: passwordError,
      result: result,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @nullable
  String get emailError;
  @nullable
  String get passwordError;
  AsyncValue<bool> get result;

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

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

abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object emailError = freezed,
    Object passwordError = freezed,
    Object result = freezed,
  }) {
    return _then(_LoginState(
      emailError:
          emailError == freezed ? _value.emailError : emailError as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_LoginState extends _LoginState {
  const _$_LoginState(
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
    return 'LoginState(emailError: $emailError, passwordError: $passwordError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
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
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const _LoginState._() : super._();
  const factory _LoginState(
      {@nullable String emailError,
      @nullable String passwordError,
      AsyncValue<bool> result}) = _$_LoginState;

  @override
  @nullable
  String get emailError;
  @override
  @nullable
  String get passwordError;
  @override
  AsyncValue<bool> get result;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
