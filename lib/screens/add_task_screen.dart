import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_from_scratch/services/task_service.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var underlineInputBorder = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.lightBlueAccent,
        width: 3.0,
      ),
    );

    String newTask = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: underlineInputBorder,
                focusedBorder: underlineInputBorder,
              ),
              onChanged: (value) {
                newTask = value;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Consumer<TaskService>(builder: (context, taskService, child) {
              return TextButton(
                onPressed: () {
                  taskService.addTask(newTask);
                  Navigator.pop(context);
                },
                child: const Text('Add'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  primary: Colors.white,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
