import 'package:flutter/material.dart';
import 'package:todo_app/utilites/ui_classes/colors.dart';
import 'package:todo_app/utilites/ui_classes/spaces.dart';
import 'package:todo_app/view/todo_screen.dart';
import 'package:todo_app/widgets/button_widget.dart';
import 'package:todo_app/widgets/text_widget.dart';

// ignore: must_be_immutable
class InitScreen extends StatelessWidget {
  InitScreen({super.key});
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.primaryColor,
        title: const Center(child: Text('To Do List')),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              text: 'Enter Your ID',
              textColor: Colors.white,
            ),
            Spaces.spacesH16,
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  hintText: 'User ID',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
            Spaces.spacesH16,
            ButtonWidget(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ToDoList(
                      userId: int.parse(idController.text),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
