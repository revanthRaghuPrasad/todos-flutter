import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Complete Todo-app by today'),
    Task(name: 'Sleep well'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
