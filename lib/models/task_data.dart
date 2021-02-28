import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy cheese'),
  ];

  int get taskCount{
    return tasks.length;
  }
}