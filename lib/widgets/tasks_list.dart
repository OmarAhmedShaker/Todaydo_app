import 'package:flutter/material.dart';
import 'package:todaydo_app/model/task_data.dart';

import 'task_list.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTitle(
                isCheked: taskData.tasks[index].taskChek,
                taskTitle: taskData.tasks[index].taskTitle,
                chekBox: (newVal) {
                  taskData.update(taskData.tasks[index]);
                },
                taskDelate: () {
                  taskData.taskDeleate(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
