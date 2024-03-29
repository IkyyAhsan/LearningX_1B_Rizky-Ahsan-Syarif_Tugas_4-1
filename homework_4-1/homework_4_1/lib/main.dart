import 'package:flutter/material.dart';
import 'package:homework_4_1/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food Application App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

