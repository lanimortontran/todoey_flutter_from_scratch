import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/task.dart';
import 'package:todoey_flutter_from_scratch/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onChanged;

  const TasksList({Key? key, required this.tasks, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        Task task = tasks[index];
        return TaskTile(
          task: task,
          onChanged: () {
            onChanged(task);
          },
        );
      },
    );
  }
}
