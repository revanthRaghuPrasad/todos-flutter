import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksLists extends StatefulWidget {
  @override
  _TasksListsState createState() => _TasksListsState();
}

class _TasksListsState extends State<TasksLists> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Complete Todo-app by today'),
    Task(name: 'Sleep well'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChececked: tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
