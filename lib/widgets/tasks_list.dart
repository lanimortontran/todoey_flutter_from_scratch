import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/task.dart';
import 'package:todoey_flutter_from_scratch/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task('Buy milk'),
    Task('Buy eggs'),
    Task('Take out trash'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        Task task = tasks[index];
        return TaskTile(
          task: task,
          onChanged: (value) {
            setState(() {
              task.toggleComplete();
            });
          },
        );
      },
    );
  }
}
