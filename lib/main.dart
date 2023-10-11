import 'package:flutter/material.dart';
import 'package:taskbeta/screens/home.dart';

// NOTE
// Widget tree: Combination of widgets in one's code. it defines the UI and widget relations.
//Build method id called frequently

// Element tree: in-memory representation of the app's widget created behind the scenes.
//Initially created after build()(which is called very frequently to check for required updates)
//it is used for determining necessary UI updates.
//Elements are re-used if possible.
// Keys are related to element widget tree and how flutter updates the UI.
//It is especially valuable in the context of building complex user
//interfaces and dealing with widgets that are rebuilt or updated dynamically.
//They are used to uniquely identify and differentiate widgets especially when it involves state/order change as the states
//are not exactly connected to the element objects that are connected to widgets in the sense that
//if/when widgets change their place flutter reuses elements and just updates the references that
//points to the widget(behind the scene).

// Render tree: The visible UI building blocks.
//it is updated when determined via element tree comparisons.
//Only partially re-rendered if UI updates are needed after comparison

// NB: It is always good practuces to keep the statefull widget as
//lean as possible(whenever posible, try to extract the UI that needs its state
// to be updated in to a seperate widget and refactor your code according as this enhances performance)

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
