import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onChanged;

  const TaskTile({
    Key? key,
    required this.task,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(task.name),
      value: task.completed,
      onChanged: (value) => onChanged(value),
    );
  }
}
