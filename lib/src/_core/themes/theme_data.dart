import 'package:flutter/material.dart';

class AppThemesData {
  static ThemeData lightTheme(context) {
    return ThemeData.light().copyWith(
      textTheme: Theme.of(context).textTheme.copyWith(
            titleLarge: const TextStyle(
              fontFamily: "Libre Baskerville",
              fontSize: 56,
              fontWeight: FontWeight.bold,
            ),
            headlineLarge: const TextStyle(
              fontFamily: "Libre Baskerville",
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
            titleMedium: const TextStyle(
              fontFamily: "Libre Baskerville",
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            headlineMedium: const TextStyle(
              fontFamily: "Libre Baskerville",
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
            titleSmall: const TextStyle(
              fontFamily: "Libre Baskerville",
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            headlineSmall: const TextStyle(
              fontFamily: "Libre Baskerville",
              fontSize: 20,
            ),
            bodyLarge: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 20,
            ),
            bodyMedium: const TextStyle(
              fontFamily: "Montserrat",
              color: Color(0XFF000000),
              fontSize: 16,
            ),
            displayMedium: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 18,
            ),
            bodySmall: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
            ),
          ),
    );
  }
}
