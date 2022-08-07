import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            textTitle: widget.tasks[index].name,
            checkboxCallback: () {
              setState(() { 
                widget.tasks[index].toggleDone();
              });
            },
            );
      },
      itemCount: widget.tasks.length,
    );
  }
}
