import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/Multi_Screens/drawer.dart';
//import 'package:layouts_in_flouter/Multi_Screens/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    //final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: null,
      drawer: const MyDrawer(),
    
    );
  }
}
