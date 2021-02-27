import 'package:flutter/material.dart';
import '../widgets/task_list.dart';
import '../screens/add_task_screen.dart';
import '../models/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy cheese'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(Icons.list,
                size: 30.0,
                color: Colors.lightBlueAccent,
                ),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(height: 10,),
              Text('Todoey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
              ),
              ),
              Text('${tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              ),
              ],
            ),
          ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: TaskList(tasks),
                ),
              ),
              ],
      ),
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.8),
                  child: AddTaskScreen((newTaskTitle){
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                    });
                    Navigator.pop(context);
                  },
                  ),
              ),
          ),
          );
        },
      ),
    );
  }
}



