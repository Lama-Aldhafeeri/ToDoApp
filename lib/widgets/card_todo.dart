import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/utilites/extention/size.dart';
import 'package:todo_app/utilites/ui_classes/colors.dart';
import 'package:todo_app/utilites/ui_classes/spaces.dart';

class CardToDoWidget extends StatefulWidget {
  const CardToDoWidget({
    super.key,
    required this.todoObj,
  });
  final ToDoListModel todoObj;

  @override
  State<CardToDoWidget> createState() => _CardToDoWidgetState();
}

class _CardToDoWidgetState extends State<CardToDoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() - 20,
      height: 70,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (widget.todoObj.status!) {
                widget.todoObj.status = false;
              } else {
                widget.todoObj.status = true;
              }
              setState(() {});
            },
            icon: Icon(
              widget.todoObj.status!
                  ? Icons.check_circle_outline
                  : Icons.circle_outlined,
              size: 37,
              color: ColorsApp.iconsColor,
            ),
          ),
          Spaces.spacesW16,
          SizedBox(
            width: context.getWidth() - 200,
            child: Text(
              widget.todoObj.task,
              overflow: TextOverflow.clip,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              widget.todoObj.status! ? Icons.edit_off_sharp : Icons.edit,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
