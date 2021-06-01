import 'package:flutter/material.dart';
import 'package:splash_screen_demo/home_screen.dart';

class ELearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: HomeScreen(),
    );
  }
}