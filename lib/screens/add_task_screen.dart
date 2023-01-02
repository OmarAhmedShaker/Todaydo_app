import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskText;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (newText) {
              newTaskText = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskText!);
                Navigator.of(context).pop();
              },
              child: Text(
                'Add',
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal, primary: Colors.white))
        ],
      ),
    );
  }
}
