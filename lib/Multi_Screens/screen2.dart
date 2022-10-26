import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/Multi_Screens/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      '/screen1',
      arguments: {
        'id': 10,
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
        title: const Text('Screen 2'),
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
                'Go To Screen 1',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
