import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box("myBox");

  // run this method if this is the 1th time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Have Fun 🙋🏽‍♂️", false],
    ];
  }

  // load the data from the database
  void loadDataBase() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
