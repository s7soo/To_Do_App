import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/task_list.dart';
import 'package:untitled/models/tasks.dart';
import 'package:untitled/models/task_data.dart';
import 'package:provider/provider.dart';

String taskText='';
final textController = TextEditingController();

class TaskBottomSheet extends StatelessWidget {
  //
  // final Function addTaskCallBack;
  //
  // TaskBottomSheet(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Padding(
          padding:EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text('Add Task',style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlueAccent
                ),),
              ),
              TextField(
                controller: textController,
                onChanged: (value){
                  taskText = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              FlatButton(onPressed: (){
                // addTaskCallBack(taskText);
                Provider.of<TaskData>(context, listen: false).updateList(taskText);
                textController.clear();
                Navigator.pop(context);
                },
                padding: EdgeInsets.all(10),
                color: Colors.lightBlueAccent,
                child: Text('Add',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
