import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_from_scratch/services/task_service.dart';
import 'package:todoey_flutter_from_scratch/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskService>(
      builder: (context, taskService, child) {
        return ListView.builder(
          itemCount: taskService.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              task: taskService.tasks[index],
            );
          },
        );
      },
    );
  }
}
