import 'package:flutter/material.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitle: 'go shoping'),
    Task(taskTitle: 'study'),
    Task(taskTitle: 'call'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(taskTitle: newTaskTitle));
    notifyListeners();
  }

  void update(Task task) {
    task.ChangeBox();
    notifyListeners();
  }

  void taskDeleate(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
