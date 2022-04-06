import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/todo_item.dart';

class TaskTile extends StatelessWidget {
  final ToDoItem todoItem;
  final Function onChanged;

  const TaskTile({
    Key? key,
    required this.todoItem,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todoItem.task),
      value: todoItem.completed,
      onChanged: (value) => onChanged(value),
    );
  }
}
