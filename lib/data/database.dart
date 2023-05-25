import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["👟 Go for a refreshing morning run", true],
      ["🌿 Water the plants in the garden", false],
      ["🚗 Take the car for an oil change", false],
      ["🍎 Buy groceries for the week", false],
      ["📱 Call and catch up with a close friend", true],
      ["💪 Go to the gym for a workout session", false],
      ["🍽️ Try out a new recipe for dinner", false],
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
