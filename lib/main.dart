import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_from_scratch/screens/tasks_screen.dart';
import 'package:todoey_flutter_from_scratch/services/task_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}
