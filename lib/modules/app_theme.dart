import 'package:flutter/material.dart';

ThemeData get appTheme => ThemeData(
  scaffoldBackgroundColor: Colors.blue.shade50,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
  useMaterial3: true,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: Colors.blue.shade300,
  unselectedItemColor: Colors.black.withOpacity(0.3),
  showUnselectedLabels: false,
  showSelectedLabels: false,
  )
);