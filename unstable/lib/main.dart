import 'package:flutter/material.dart';
import 'package:unstable/pages/home_page.dart';
import 'package:unstable/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Unstable',
      home: WelcomeScreen(),
    );
  }
}
