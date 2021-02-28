import 'dart:collection';

import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy cheese'),
  ];

  int get taskCount{
    return _tasks.length;
  }
  UnmodifiableListView<Task> get task{                        // so that task can't be accessed from outside
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(String newTitle) {
    _tasks.add(Task(name: newTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}