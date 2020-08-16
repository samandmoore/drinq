import 'package:drinq/models/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'auth.freezed.dart';

final authProvider = StateNotifierProvider<AuthNotifier>((ref) {
  return AuthNotifier(storage: ref.read(secureStorageProvider));
});

@freezed
abstract class Auth with _$Auth {
  const factory Auth.authenticated({
    String token,
  }) = _Authenticated;

  const factory Auth.unauthenticated() = _Unauthenticated;

  const factory Auth.loading() = _Loading;
}

class AuthNotifier extends StateNotifier<Auth> {
  static const String drinqAuthTokenStorageKey = 'drinqAuthTokenStorageKey';

  final FlutterSecureStorage storage;

  AuthNotifier({@required this.storage}) : super(Auth.loading()) {
    _loadInitialValue();
  }

  Future<void> storeToken(String token) async {
    await storage.write(key: drinqAuthTokenStorageKey, value: token);
    state = Auth.authenticated(token: token);
  }

  Future<void> clearToken() async {
    await storage.delete(key: drinqAuthTokenStorageKey);
    state = Auth.unauthenticated();
  }

  Future<void> _loadInitialValue() async {
    final tokenFromStorage = await storage.read(key: drinqAuthTokenStorageKey);
    if (tokenFromStorage != null) {
      state = Auth.authenticated(token: tokenFromStorage);
    } else {
      state = Auth.unauthenticated();
    }
  }
}
