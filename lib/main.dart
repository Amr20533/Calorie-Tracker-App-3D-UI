import 'package:calorie_tracker_app/modules/app_theme.dart';
import 'package:calorie_tracker_app/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calorie Tracker',
      theme: appTheme,
      home: const MyHomePage(),
    );
  }
}

