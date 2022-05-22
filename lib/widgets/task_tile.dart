import 'package:flutter/material.dart';



class TaskListTile extends StatelessWidget {

  TaskListTile({required this.isChecked,required this.taskTitle,required this.toggleCheckBox,this.listTileDismiss});
  final bool isChecked;
  final String taskTitle;
  final toggleCheckBox;
  final listTileDismiss;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: listTileDismiss,
      title: Text(taskTitle,style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : TextDecoration.none
      ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

