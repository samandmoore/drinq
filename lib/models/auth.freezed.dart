// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthTearOff {
  const _$AuthTearOff();

// ignore: unused_element
  _Authenticated authenticated({String token}) {
    return _Authenticated(
      token: token,
    );
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }
}

// ignore: unused_element
const $Auth = _$AuthTearOff();

mixin _$Auth {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(String token),
    @required Result unauthenticated(),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(String token),
    Result unauthenticated(),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result loading(_Loading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    Result loading(_Loading value),
    @required Result orElse(),
  });
}

abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
}

class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;
}

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({String token});
}

class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_Authenticated(
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'Auth.authenticated(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(String token),
    @required Result unauthenticated(),
    @required Result loading(),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return authenticated(token);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(String token),
    Result unauthenticated(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result loading(_Loading value),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements Auth {
  const factory _Authenticated({String token}) = _$_Authenticated;

  String get token;
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'Auth.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(String token),
    @required Result unauthenticated(),
    @required Result loading(),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(String token),
    Result unauthenticated(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result loading(_Loading value),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements Auth {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'Auth.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(String token),
    @required Result unauthenticated(),
    @required Result loading(),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(String token),
    Result unauthenticated(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result loading(_Loading value),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements Auth {
  const factory _Loading() = _$_Loading;
}
