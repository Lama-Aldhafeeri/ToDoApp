import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/utilites/ui_classes/colors.dart';
import 'package:todo_app/view/add_task_screen.dart';
import 'package:todo_app/widgets/card_todo.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key, required this.userId});

  final int userId;
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorsApp.primaryColor,
        title: const Text('To Do List'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTask(
                      userId: widget.userId,
                    ),
                  ),
                ).then(
                  (value) => {
                    if (value == "add") {setState(() {})}
                  },
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
              children: taskListOfObj.map(
            (e) {
              return Row(
                children: [
                  e.userId == widget.userId
                      ? GestureDetector(
                          onHorizontalDragEnd: (details) {
                            taskListOfObj.remove(e);
                            setState(() {});
                          },
                          child: CardToDoWidget(
                            todoObj: e,
                          ),
                        )
                      : Container()
                ],
              );
            },
          ).toList()),
        ),
      ),
    );
  }
}
