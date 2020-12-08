import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksLists extends StatelessWidget {
  const TasksLists({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
