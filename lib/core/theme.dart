import 'package:flutter/material.dart';

class NoorTheme {
  static const sand = Color(0xFFFFF1CF);
  static const sunset = Color(0xFFFFB45E);
  static const teal = Color(0xFF2AA7A5);
  static const ink = Color(0xFF40342A);
  static const lantern = Color(0xFFFFD166);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: sunset, primary: sunset, secondary: teal, surface: sand),
        scaffoldBackgroundColor: sand,
        fontFamily: 'sans',
        textTheme: const TextTheme(headlineMedium: TextStyle(fontWeight: FontWeight.w900, color: ink), titleLarge: TextStyle(fontWeight: FontWeight.w800, color: ink), bodyLarge: TextStyle(fontSize: 18, color: ink)),
        filledButtonTheme: FilledButtonThemeData(style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(56), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)), textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        cardTheme: CardThemeData(color: Colors.white.withValues(alpha: .86), elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
      );
}
