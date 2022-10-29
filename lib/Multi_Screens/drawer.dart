import 'package:flutter/material.dart';
//import 'screen1.dart';
//import 'screen2.dart';
//import 'main_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key,this.str=''});

  final String? str;

  static void selectScreen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed(
        '/screen1',
        arguments: {
          'id': 10,
          'title': 'info1',
        },
      ).then((value) => print(value));
    } else {
      Navigator.of(ctx).pushReplacementNamed(
        n == 0 ? '/' : '/screen2',
        arguments: {
          'id': n == 1 ? 10 : 20,
          'title': n == 1 ? 'info1' : 'info2',
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () => selectScreen(context, 0),
            title: const Text(
              'Go To Main Screen',
              style: TextStyle(fontSize: 22.0),
            ),
            subtitle: const Text(
              'Go To Main Screen',
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
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
    );
  }
}
