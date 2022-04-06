import 'package:flutter/material.dart';

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

    return Container(
      color: const Color(0xff757575),
      child: Container(
        // color: Colors.white,
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
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Add'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
