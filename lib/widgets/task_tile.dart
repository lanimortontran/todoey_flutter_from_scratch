import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/todo_item.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.todoItem,
  }) : super(key: key);

  final ToDoItem todoItem;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todoItem.task),
      value: todoItem.completed,
      onChanged: (value) {},
    );
  }
}
