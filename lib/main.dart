import 'package:flutter/material.dart';
import 'package:todo_app/datasets/data.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/view/init_screen.dart';

List<ToDoListModel> taskListOfObj = [];
void main() {
  for (var i in data) {
    taskListOfObj.add(ToDoListModel.formJSON(i));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitScreen(),
    );
  }
}
