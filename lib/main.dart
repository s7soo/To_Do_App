import 'package:flutter/material.dart';
import 'screens/task_page.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task_data.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
      child: MaterialApp(
          home:TasksPage()
      ),
    );
  }
}
