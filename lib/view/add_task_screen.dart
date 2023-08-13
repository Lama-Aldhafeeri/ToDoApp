import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';

import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/utilites/ui_classes/colors.dart';

// ignore: must_be_immutable
class AddTask extends StatefulWidget {
  const AddTask({super.key, required this.userId});
  final int userId;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController? toDoController;

  @override
  void initState() {
    toDoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    toDoController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Add New Task')),
        backgroundColor: ColorsApp.primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                if (toDoController!.text == '') {
                } else {
                  final newTask = ToDoListModel(
                      taskId: 22222,
                      task: toDoController!.text,
                      userId: widget.userId,
                      status: false);
                  taskListOfObj.add(newTask);
                  Navigator.pop(context, "add");
                }
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: toDoController,
                decoration: InputDecoration(
                  hintText: 'New Task',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
