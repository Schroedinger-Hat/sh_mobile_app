import 'package:flutter/material.dart';
import 'package:schrodinger_hat_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schrodinger Hat',
      theme: ThemeData(
        primaryColor: const Color(0xFF171717),
        scaffoldBackgroundColor: const Color(0xFFECEFF4),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF171717),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xFF171717)),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF171717)),
          bodyMedium: TextStyle(color: Color(0xFF171717)),
          displayLarge: TextStyle(color: Color(0xFF171717)),
          displayMedium: TextStyle(color: Color(0xFF171717)),
          displaySmall: TextStyle(color: Color(0xFF171717)),
          headlineMedium: TextStyle(color: Color(0xFF171717)),
          headlineSmall: TextStyle(color: Color(0xFF171717)),
          titleLarge: TextStyle(color: Color(0xFF171717)),
          titleMedium: TextStyle(color: Color(0xFF171717)),
          titleSmall: TextStyle(color: Color(0xFF171717)),
          bodySmall: TextStyle(color: Color(0xFF171717)),
          labelLarge: TextStyle(color: Color(0xFF171717)),
          labelSmall: TextStyle(color: Color(0xFF171717)),
        ),
        fontFamily: 'Red Hat Display',
      ),
      home: SplashScreen(),
    );
  }
}
