import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isCheked;
  final String taskTitle;
  final void Function(bool?) chekBox;
  final void Function() taskDelate;

  TaskTitle(
      {required this.isCheked,
      required this.taskTitle,
      required this.chekBox,
      required this.taskDelate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isCheked,
        onChanged: chekBox,
      ),
      onLongPress: taskDelate,
    );
  }
}
