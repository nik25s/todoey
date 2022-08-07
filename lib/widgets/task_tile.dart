import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
 final bool isChecked;
  final String textTitle;
  final Function checkboxCallback;

    TaskTile({required this.isChecked,required this.textTitle,required this.checkboxCallback});
  @override
   
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(textTitle,style:TextStyle(decoration:isChecked ? TextDecoration.lineThrough:null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:((value) {
         checkboxCallback();
        }),
      ),
    );
  }
}



