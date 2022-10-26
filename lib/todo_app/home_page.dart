import 'package:flutter/material.dart';
import 'package:layouts_in_flouter/todo_app/todo_class.dart';
import 'package:layouts_in_flouter/todo_app/todos_screen.dart';

class MyTodoList extends StatelessWidget {
  const MyTodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
          20,
          (index) => Todo(
            'Todo $index',
            'A description of what needs to be done for Todo $index',
          ),
        ),
      ),
    );
  }
}
