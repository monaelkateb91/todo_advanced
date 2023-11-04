
import 'package:flutter/material.dart';
import 'package:todo_advanced/views/add_task_view.dart';
import 'package:todo_advanced/views/header.dart';
import 'package:todo_advanced/views/list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(bottom: false,
        child: Column(
          children: [
            Expanded(
              child:const headerView(),
              flex: 1,
            ),

            Expanded(
              child: listview (),
              flex: 5,
            )
          ],
        ),
      ),
      floatingActionButton: const AddTaskView(),
    );
  }
}
