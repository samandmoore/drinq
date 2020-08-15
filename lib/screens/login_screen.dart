import 'package:drinq/models/api.dart';
import 'package:drinq/models/models.dart';
import 'package:drinq/utils/form_layout.dart';
import 'package:drinq/utils/header.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/stretch.dart';
import 'package:drinq/utils/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'login_screen.freezed.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final state = useProvider(loginScreenNotifierProvider.state);

    return ScreenScaffold(
      body: ListView(
        children: [
          Header('Log-in'),
          FormLayout([
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: state.emailError,
              ),
              autofillHints: [AutofillHints.username, AutofillHints.email],
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: state.passwordError,
              ),
              obscureText: true,
              autofillHints: [AutofillHints.password],
            ),
            HStretch(
              child: OutlineButton(
                child: Text('log in'),
                onPressed: () =>
                    context.read(loginScreenNotifierProvider).login(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}

@freezed
abstract class LoginScreenState implements _$LoginScreenState {
  const LoginScreenState._();

  const factory LoginScreenState({
    @nullable String emailError,
    @nullable String passwordError,
    @Default(AsyncValue<bool>.data(false)) AsyncValue<bool> result,
  }) = _LoginScreenState;

  bool hasErrors() {
    return [
      emailError,
      passwordError,
    ].any((e) => e != null);
  }
}

class LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  final Api api;
  final AuthNotifier auth;

  LoginScreenNotifier({
    @required this.api,
    @required this.auth,
  }) : super(LoginScreenState());

  Future<void> login({
    @required String email,
    @required String password,
  }) async {
    state = state.copyWith(
      emailError: email.isNullOrBlank ? 'Required' : null,
      passwordError: password.isNullOrBlank ? 'Required' : null,
    );

    if (state.hasErrors()) return;

    state = state.copyWith(result: AsyncValue.loading());
    state = state.copyWith(
      result: await AsyncValue.guard(() async {
        final token = await api.createLogin(email: email, password: password);
        auth.storeToken(token);
        return true;
      }),
    );
  }
}

final loginScreenNotifierProvider = StateNotifierProvider.autoDispose(
  (ref) => LoginScreenNotifier(
    api: ref.read(apiProvider),
    auth: ref.read(authProvider),
  ),
);
