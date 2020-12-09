import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChececked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChececked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decorationThickness: 2.0,
            decoration: isChececked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChececked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
