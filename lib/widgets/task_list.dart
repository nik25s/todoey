import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
class TaskList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              textTitle: Provider.of<TaskData>(context).tasks[index].name,
              checkboxCallback: () {
                // setState(() { 
                //   widget.tasks[index].toggleDone();
                // });
              },
              );
        },
        itemCount: Provider.of<TaskData>(context).tasks.length,
      );
      }
     
    );
  }
}

