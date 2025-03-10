import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/modules/task_data.dart';
import 'package:todoapp/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
