import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
 class TaskData extends ChangeNotifier{
    List<Task> tasks = [
    Task(name: 'buy foods'),
    Task(name: 'buy books'),
    Task(name: 'buy grocery'),
  ];
 }