import 'dart:math';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      '/screen$n',
      arguments: {
        'id': n == 1 ? 10 : 20,
        'title': n == 1 ? 'info1' : 'info2',
      },
    );
  }

  final List<Map<String, Object>> _pages = [
    {
      'page': const Scaffold(
        body: Center(
          child: Text('Text 1'),
        ),
      ),
      'title': 'part 1'
    },
    {
      'page': const Scaffold(
        body: Center(
          child: Text('Text 2'),
        ),
      ),
      'title': 'part 2'
    },
  ];

  int _selectedPageIndex = 0;

  void _x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title'] as String),
        ),
        body: _pages[_selectedPageIndex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          //type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Part 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Part 2',
            ),
          ],
        ),
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
      ),
    );
  }
}
