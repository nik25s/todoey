import 'package:flutter/material.dart';
import 'task_tile.dart';
class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),

      ],
      );
  }
}