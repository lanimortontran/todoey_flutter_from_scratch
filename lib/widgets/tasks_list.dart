import 'package:flutter/material.dart';
import 'package:todoey_flutter_from_scratch/models/todo_item.dart';
import 'package:todoey_flutter_from_scratch/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  List<ToDoItem> todoItems = [
    ToDoItem('Buy milk'),
    ToDoItem('Buy eggs'),
    ToDoItem('Take out trash'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoItems.length,
      itemBuilder: (BuildContext context, int index) {
        ToDoItem todoItem = todoItems[index];
        return TaskTile(todoItem: todoItem);
      },
    );
  }
}
