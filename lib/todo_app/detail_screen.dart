import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/todo_app/todo_class.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          todo.description,
        ),
      ),
    );
  }
}
