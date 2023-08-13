import 'package:flutter/material.dart';
import 'package:todo_app/utilites/extention/size.dart';
import 'package:todo_app/utilites/ui_classes/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onPressed, required this.text});
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsApp.primaryColor),
            fixedSize:
                MaterialStateProperty.all(Size(context.getWidth() - 70, 50)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: Text(text));
  }
}
