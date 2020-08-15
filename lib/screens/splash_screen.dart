import 'package:drinq/models/models.dart';
import 'package:drinq/screens/all_recipes_screen.dart';
import 'package:drinq/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer((_, read) {
      final authState = read(authProvider.state);
      if (authState.isLoggedIn) {
        return AllRecipesScreen();
      }

      return LoginScreen();
    });
  }
}
