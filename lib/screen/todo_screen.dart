import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final String developer = "The full stack ";
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(developer)),
      body: Container(
          child: Column(children: [
        // TodoLevel1(developer),
        ListTile(
          title: TodoLevel1(developer, isChecked),
          trailing: Checkbox(
              value: isChecked,
              onChanged: (bool? newChecked) =>
                  setState(() => isChecked = newChecked!)),
        ),
      ])),
      // body: TodoLevel1(developer),
    );
  }
}

// tree widgets
class TodoLevel1 extends StatelessWidget {
  final String developer;
  final bool isChecked;
  // const TodoLevel1(Key? key, this.developer) : super(key: key);
  const TodoLevel1(this.developer, this.isChecked);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: TodoLevel2(developer, isChecked),
      ),
    );
  }
}

class TodoLevel2 extends StatelessWidget {
  final String developer;
  final bool isChecked;
  const TodoLevel2(this.developer, this.isChecked);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          developer,
          style: TextStyle(
              fontSize: 20,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        )
        // child: const Text(
        //   "The full stack junkie",
        //   style: TextStyle(fontSize: 24),
        // ),
        );
  }
}
