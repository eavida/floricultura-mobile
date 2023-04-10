import 'package:flutter/material.dart';
import '../screens/login_page.dart';

void main() {
  runApp(MaterialApp(
      home: const LoginScreen(),
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff4f4f4),
      ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffffb3b3),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        )
      )));
}