import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Tasks> tasks = [
  ];

  void updateList(String newString){
    tasks.add(Tasks(text: newString));
    notifyListeners();
  }
  int listSize(){
    return tasks.length;
  }

  void updateBox(Tasks tasks){
    tasks.toggleDone();
    notifyListeners();
  }

  void listDelete(Tasks task){
    tasks.remove(task);
    notifyListeners();
  }
}