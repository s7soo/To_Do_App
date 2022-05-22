class Tasks{
  String text;
  bool isDone;

  Tasks({this.text = '',this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }
}