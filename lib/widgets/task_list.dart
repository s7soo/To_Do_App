import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task_data.dart';

class TaskListView extends StatelessWidget {
  // TaskListView(this.tasks);
  // final List<Tasks> tasks;
    @override
    Widget build(BuildContext context) {
      return Consumer<TaskData>(
        builder: (context, taskData, child){
          return ListView.builder(
            itemBuilder: (context,index){
              final task = taskData.tasks[index];
              return TaskListTile(
                taskTitle: task.text,
                isChecked: task.isDone,
                // taskTitle: widget.tasks[index].text,
                // isChecked: widget.tasks[index].isDone,
                toggleCheckBox: (newValue){
                    // widget.tasks[index].toggleDone();
                  taskData.updateBox(task);
                },
                listTileDismiss: (){
                  taskData.listDelete(task);
                },
              );
            },
            itemCount: taskData.tasks.length,
          );
        },
      );
    }
}