import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'lexend',
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          ),
          bodySmall: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.redAccent,
          ),
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
