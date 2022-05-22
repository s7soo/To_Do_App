import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modal_bottom_sheet.dart';
import 'package:untitled/widgets/task_list.dart';
import 'package:untitled/models/tasks.dart';
import 'package:untitled/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet());
      },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80,left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                      Icons.list,
                      size: 40,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Todoey',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),
                Text('${Provider.of<TaskData>(context).listSize()} Tasks',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15
                ),)
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
              )
            ),
            child: TaskListView()
          ),
          )
        ],
      )
    );
  }
}
// (var textTitle){
// setState(() {
// Provider.of<TaskData>(context).updateList(Tasks(text: textTitle));
// });
//
// }
