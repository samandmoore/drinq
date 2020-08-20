import 'package:drinq/screens/splash_screen.dart';
import 'package:drinq/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'drinq',
        theme: AppTheme.build(),
        home: const SplashScreen(),
      ),
    );
  }
}
