import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import '../widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(                                  //consumer will be listening for changes in TaskData
      builder: (context,taskData,child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.task[index].name,
              isChecked: taskData.task[index].isDone,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}