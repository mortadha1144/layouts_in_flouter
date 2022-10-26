import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/Multi_Screens/screen1.dart';
import 'package:layouts_in_flouter/Multi_Screens/screen2.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      '/screen$n',
      arguments: {
        'id': n == 1 ? 10 : 20,
        'title': n == 1 ? 'info1' : 'info2',
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: const Center(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () => selectScreen(context, 1),
              title: const Text(
                'Go To Screen 1',
                style: TextStyle(fontSize: 30.0),
              ),
              subtitle: const Text(
                'Go To Screen 1',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () => selectScreen(context, 2),
              title: const Text(
                'Go To Screen 2',
                style: TextStyle(fontSize: 30.0),
              ),
              subtitle: const Text(
                'Go To Screen 2',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
