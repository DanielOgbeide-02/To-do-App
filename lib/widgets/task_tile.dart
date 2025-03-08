import 'package:flutter/material.dart';

class taskTile extends StatelessWidget {

  final bool isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;

  taskTile({this.isChecked = false, this.taskTitle, this.checkboxCallback}){}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle!, style: TextStyle(
        decoration: (isChecked)?TextDecoration.lineThrough:null
      ),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
      ),
    );
  }
}

