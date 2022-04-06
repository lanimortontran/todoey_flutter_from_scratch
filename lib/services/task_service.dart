import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter_from_scratch/models/task.dart';

class TaskService extends ChangeNotifier {
  List<Task> _tasks = [
    Task('Buy milk'),
    Task('Buy eggs'),
    Task('Take out trash'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void toggleTaskCompletion(Task task) {
    task.toggleComplete();
    notifyListeners();
  }

  void addTask(String taskName) {
    _tasks.add(Task(taskName));
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get count {
    return tasks.length;
  }
}
