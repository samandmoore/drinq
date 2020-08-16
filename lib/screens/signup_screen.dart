import 'package:drinq/models/api.dart';
import 'package:drinq/models/auth.dart';
import 'package:drinq/utils/form_layout.dart';
import 'package:drinq/utils/nav.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:drinq/utils/stretch.dart';
import 'package:drinq/utils/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'signup_screen.freezed.dart';

class SignupScreen extends HookWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final state = useProvider(signupScreenNotifierProvider.state);

    return ScreenScaffold(
      title: 'Sign up',
      body: ListView(
        children: [
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
              autofillHints: [AutofillHints.newPassword],
            ),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                errorText: state.confirmPasswordError,
              ),
              obscureText: true,
              autofillHints: [AutofillHints.newPassword],
            ),
            HStretch(
              child: OutlineButton(
                child: Text('sign up'),
                onPressed: () async {
                  final result =
                      await context.read(signupScreenNotifierProvider).signup(
                            email: emailController.text,
                            password: passwordController.text,
                            confirmPassword: confirmPasswordController.text,
                          );
                  if (result) Nav.of(context).pop();
                },
              ),
            )
          ]),
        ],
      ),
    );
  }
}

@freezed
abstract class SignupScreenState implements _$SignupScreenState {
  const SignupScreenState._();

  const factory SignupScreenState({
    @nullable String emailError,
    @nullable String passwordError,
    @nullable String confirmPasswordError,
    @Default(AsyncValue<bool>.data(false)) AsyncValue<bool> result,
  }) = _SignupScreenState;

  bool hasErrors() {
    return [
      emailError,
      passwordError,
      confirmPasswordError,
    ].any((e) => e != null);
  }
}

class SignupScreenNotifier extends StateNotifier<SignupScreenState> {
  final Api api;
  final AuthNotifier auth;

  SignupScreenNotifier({
    @required this.api,
    @required this.auth,
  }) : super(SignupScreenState());

  Future<bool> signup({
    @required String email,
    @required String password,
    @required String confirmPassword,
  }) async {
    state = state.copyWith(
      emailError: email.isNullOrBlank ? 'Required' : null,
      passwordError: password.isNullOrBlank ? 'Required' : null,
      confirmPasswordError: confirmPassword.isNullOrBlank ? 'Required' : null,
    );

    if (state.hasErrors()) return false;

    state = state.copyWith(
      confirmPasswordError:
          confirmPassword != password ? 'Must match password' : null,
    );

    if (state.hasErrors()) return false;

    state = state.copyWith(result: AsyncValue.loading());
    state = state.copyWith(
      result: await AsyncValue.guard(() async {
        final token = await api.createUser(email: email, password: password);
        auth.storeToken(token);
        return true;
      }),
    );

    return true;
  }
}

final signupScreenNotifierProvider = StateNotifierProvider.autoDispose(
  (ref) => SignupScreenNotifier(
    api: ref.read(apiProvider),
    auth: ref.read(authProvider),
  ),
);