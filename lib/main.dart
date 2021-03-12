import 'package:TaskM/TasksScreen/TaskBox.dart';
import 'package:TaskM/TasksScreen/TasksScreen.dart';
import 'package:flutter/material.dart';
import 'package:TaskM/TasksScreen/TaskBox.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Task> allTasks = <Task>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(allTasks),
    );
  }   
}
