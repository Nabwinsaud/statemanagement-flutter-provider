import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {
  String developer = "Nabin saud";
  bool isChecked = false;

  void toggleIsChecked() {
    isChecked = !isChecked;
    notifyListeners();
  }
}
