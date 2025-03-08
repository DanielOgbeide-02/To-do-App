import 'package:flutter/material.dart';
import 'package:todoapp/modules/task.dart';
import 'package:todoapp/modules/task_data.dart';
import 'package:todoapp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

class AddtaskScreen extends StatefulWidget {


  @override
  State<AddtaskScreen> createState() => _AddtaskScreenState();
}

class _AddtaskScreenState extends State<AddtaskScreen> {
  String? newTaskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        child:
        Container(
          padding: EdgeInsets.all(30.0),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.lightBlueAccent
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (newText) {
                  setState(() {
                    newTaskName = newText;
                  });
                },

                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 5)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 5)
                    )
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: TextButton(
                  onPressed: () {
                    // widget.addTaskCallback(newTaskName!);
                    Provider.of<TaskData>(context, listen: false).addNewTask(newTaskName!);
                    Navigator.pop(context);
                  }, child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
