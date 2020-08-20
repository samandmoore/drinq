import 'package:drinq/models/auth.dart';
import 'package:drinq/screens/all_recipes_screen.dart';
import 'package:drinq/screens/login_screen.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider.state);

    return auth.when(
      authenticated: (_) => const AllRecipesScreen(),
      unauthenticated: () => const LoginScreen(),
      loading: () => const ScreenScaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
