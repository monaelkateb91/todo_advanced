
import 'package:flutter/material.dart';
import 'package:todo_advanced/models/users.dart';

import '../models/tasks.dart';

class ViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
final username=TextEditingController();

  User user = User("Mona");

  int get numTasks=>tasks.length;
  int get numTasksRemaining=>tasks.where((task) =>!task.complete).length;
  int get numCompleted=>numTasks-numTasksRemaining;

  void addTask (Task newTask){
    tasks.add(newTask);
    notifyListeners();

  }
  String getUsername(){
    return user.username;
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
  bool getTaskValue(int taskIndex){
    return tasks[taskIndex].complete;
  }
  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }
  void setTaskValue(int taskIndex, bool taskValue){
     tasks[taskIndex].complete=taskValue;
     notifyListeners();
  }

  void deleteTasks(int taskIndex)
  {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }
  void deleteTask (int taskIndex)
  {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }
  void updateTask ( int taskIndex, String taskName) {
    tasks[taskIndex].title = taskName;

    notifyListeners();
  }

}

