import 'package:flutter/material.dart';
class bottomsheet extends StatelessWidget {
    late String newtasktitle;
    final Function newtasktitlecallback;
    bottomsheet(this.newtasktitlecallback);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500,
                fontSize: 30),
          ),
          TextField(
            onChanged: (newText){
              newtasktitle=newText;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 6, color: Colors.lightBlueAccent),
              ),
            ),
          ),
          SizedBox(height:17),
          FlatButton(
            onPressed: (){
               newtasktitlecallback(newtasktitle);
            },
            color: Colors.lightBlueAccent,
            child: Text('Add',style:TextStyle(color: Colors.white),),
            )
        ]),
      ),
    );

  }
}