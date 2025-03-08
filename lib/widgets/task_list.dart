import 'package:flutter/material.dart';
import 'package:todoapp/modules/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.tasksCount,
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: (){
                taskData.deleteTask(task);
              },
              child: taskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState){
                      taskData.updateTask(task);
                  }
              ),
            );
          },
        );
      },
    );
  }
}