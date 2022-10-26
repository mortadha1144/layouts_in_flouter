import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/Multi_Screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      '/screen2',
      arguments: {
        'id': 20,
        'title': 'info2',
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${args['id']}',
              style: const TextStyle(fontSize: 35.0),
            ),
            Text(
              '${args['title']}',
              style: const TextStyle(fontSize: 35.0),
            ),
            InkWell(
              onTap: () => selectScreen(context),
              child: const Text(
                'Go To Screen 2',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
