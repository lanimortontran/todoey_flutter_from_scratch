import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_from_scratch/models/task.dart';
import 'package:todoey_flutter_from_scratch/services/task_service.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskService>(builder: (context, taskService, child) {
      return GestureDetector(
        onLongPress: () {
          taskService.removeTask(task);
        },
        child: CheckboxListTile(
          title: Text(
            task.name,
            style: TextStyle(
              decoration: task.completed ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          value: task.completed,
          onChanged: (value) => taskService.toggleTaskCompletion(task),
        ),
      );
    });
  }
}
