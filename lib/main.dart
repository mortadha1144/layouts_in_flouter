import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/Multi_Screens/example_flutter.dart';
import 'package:layouts_in_flouter/managing_state.dart';
//import 'package:layouts_in_flouter/card_and_stack.dart';
//import 'package:layouts_in_flouter/tutorial_app.dart';
//import 'package:layouts_in_flouter/container.dart';
//import 'package:layouts_in_flouter/grid_and_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          child: const Text(
            'Go To Screen 1',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
