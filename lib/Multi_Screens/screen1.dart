import 'package:flutter/material.dart';
//import 'package:layouts_in_flouter/Multi_Screens/drawer.dart';
//import 'package:layouts_in_flouter/Multi_Screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    //final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: null,
      //drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).pop('popped');
        }),
        child: const Icon(Icons.delete),
      ),
    );
  }
}
