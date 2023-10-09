import 'package:flutter/material.dart';
import 'package:taskbeta/screens/home.dart';

// NOTE
// Widget tree: Combination of widgets in one's code

// Element tree: in-memory representation of the app's widget.
//Initially created after build()(which is called very frequently to check for required updates)
//it is used for determining necessary UI updates.
//Elements are re-used if possible.

// Render tree: The visible UI building blocks.
//it is updated when determined via element tree comparisons.
//Only partially re-rendered if UI updates are needed after comparison

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
