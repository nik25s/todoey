import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Bake the Cake'),
      trailing: Taskcheckbox(),
    );
  }
}

class Taskcheckbox extends StatefulWidget {
  @override
  State<Taskcheckbox> createState() => _TaskcheckboxState();
}

class _TaskcheckboxState extends State<Taskcheckbox> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
    value: ischecked,
    activeColor: Colors.lightBlueAccent,
     onChanged: (newValue) {
      setState(() {
        ischecked=newValue!;
      });
       },);
  }
}