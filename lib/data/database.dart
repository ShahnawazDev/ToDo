import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Task 1", true],
      ["Task 2", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // upadate the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
