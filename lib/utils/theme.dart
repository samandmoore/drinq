import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData build() {
    final colorScheme = ColorScheme.light(
      surface: Colors.white,
      onSurface: Colors.grey.shade800,
    );

    final iconThemeData = IconThemeData(
      color: colorScheme.onSurface,
    );

    final textTheme = ThemeData.light().textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        );

    final appBarTheme = AppBarTheme(
      elevation: 0,
      color: colorScheme.surface,
      textTheme: textTheme,
      actionsIconTheme: iconThemeData,
      iconTheme: iconThemeData,
    );

    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme,
      textTheme: textTheme,
      iconTheme: iconThemeData,
      appBarTheme: appBarTheme,
      scaffoldBackgroundColor: colorScheme.background,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
