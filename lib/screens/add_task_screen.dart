import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
              ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
                  child: Text('Add',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTitle);
                Navigator.pop(context);
                print('task is added');
              },
                color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
