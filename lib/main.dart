import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgmt_flutter/model/todo_model.dart';
import 'package:statemgmt_flutter/model/user_auth_model.dart';
import 'package:statemgmt_flutter/screen/todo_provider.dart';
import 'package:statemgmt_flutter/screen/user_auth_screen.dart';
// import 'package:statemgmt_flutter/screen/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoModel()),
        ChangeNotifierProvider(create: (_) => AuthUserModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const TodoList());
        // home: const TodoListProvider(),
        home: const LoginUser(),
      ),
    );
  }
}
