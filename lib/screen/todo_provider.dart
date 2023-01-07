import 'package:flutter/material.dart';
import 'package:statemgmt_flutter/model/todo_model.dart';
import 'package:provider/provider.dart';

class TodoListProvider extends StatefulWidget {
  const TodoListProvider({super.key});

  @override
  State<TodoListProvider> createState() => _TodoListProviderState();
}

class _TodoListProviderState extends State<TodoListProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.watch<TodoModel>().developer)),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Text(context.watch<TodoModel>().developer),
      ),
    );
  }
}
