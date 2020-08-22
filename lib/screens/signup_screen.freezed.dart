// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signup_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignupStateTearOff {
  const _$SignupStateTearOff();

// ignore: unused_element
  _SignupState call(
      {@nullable String emailError,
      @nullable String passwordError,
      @nullable String confirmPasswordError,
      AsyncValue<bool> result = const AsyncValue<bool>.data(false)}) {
    return _SignupState(
      emailError: emailError,
      passwordError: passwordError,
      confirmPasswordError: confirmPasswordError,
      result: result,
    );
  }
}

// ignore: unused_element
const $SignupState = _$SignupStateTearOff();

mixin _$SignupState {
  @nullable
  String get emailError;
  @nullable
  String get passwordError;
  @nullable
  String get confirmPasswordError;
  AsyncValue<bool> get result;

  $SignupStateCopyWith<SignupState> get copyWith;
}

abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      @nullable String confirmPasswordError,
      AsyncValue<bool> result});

  $AsyncValueCopyWith<bool, $Res> get result;
}

class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object emailError = freezed,
    Object passwordError = freezed,
    Object confirmPasswordError = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      emailError:
          emailError == freezed ? _value.emailError : emailError as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String,
      confirmPasswordError: confirmPasswordError == freezed
          ? _value.confirmPasswordError
          : confirmPasswordError as String,
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

abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String emailError,
      @nullable String passwordError,
      @nullable String confirmPasswordError,
      AsyncValue<bool> result});

  @override
  $AsyncValueCopyWith<bool, $Res> get result;
}

class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object emailError = freezed,
    Object passwordError = freezed,
    Object confirmPasswordError = freezed,
    Object result = freezed,
  }) {
    return _then(_SignupState(
      emailError:
          emailError == freezed ? _value.emailError : emailError as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String,
      confirmPasswordError: confirmPasswordError == freezed
          ? _value.confirmPasswordError
          : confirmPasswordError as String,
      result: result == freezed ? _value.result : result as AsyncValue<bool>,
    ));
  }
}

class _$_SignupState extends _SignupState {
  const _$_SignupState(
      {@nullable this.emailError,
      @nullable this.passwordError,
      @nullable this.confirmPasswordError,
      this.result = const AsyncValue<bool>.data(false)})
      : assert(result != null),
        super._();

  @override
  @nullable
  final String emailError;
  @override
  @nullable
  final String passwordError;
  @override
  @nullable
  final String confirmPasswordError;
  @JsonKey(defaultValue: const AsyncValue<bool>.data(false))
  @override
  final AsyncValue<bool> result;

  @override
  String toString() {
    return 'SignupState(emailError: $emailError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignupState &&
            (identical(other.emailError, emailError) ||
                const DeepCollectionEquality()
                    .equals(other.emailError, emailError)) &&
            (identical(other.passwordError, passwordError) ||
                const DeepCollectionEquality()
                    .equals(other.passwordError, passwordError)) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                const DeepCollectionEquality().equals(
                    other.confirmPasswordError, confirmPasswordError)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailError) ^
      const DeepCollectionEquality().hash(passwordError) ^
      const DeepCollectionEquality().hash(confirmPasswordError) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState extends SignupState {
  const _SignupState._() : super._();
  const factory _SignupState(
      {@nullable String emailError,
      @nullable String passwordError,
      @nullable String confirmPasswordError,
      AsyncValue<bool> result}) = _$_SignupState;

  @override
  @nullable
  String get emailError;
  @override
  @nullable
  String get passwordError;
  @override
  @nullable
  String get confirmPasswordError;
  @override
  AsyncValue<bool> get result;
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith;
}
