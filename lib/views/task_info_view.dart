import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/view_model.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My Dashboard", style: TextStyle(fontSize: 20)),
            backgroundColor: Colors.orangeAccent,
          ),
          body: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), color: Colors.orange[200]),
                  child: Text("Number of total Tasks",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                Container( decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Text(
                    "${viewmodel.numTasks}",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ) ,
                ),

                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), color: Colors.orange[200]),
                  child: Text("Number of non completed Tasks",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

                ),
                Container( decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Text(
                  "${viewmodel.numTasksRemaining}",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),

                ) ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), color: Colors.orange[200]),
                  child: Text("Number completed Tasks",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                Container(
                    child: Text("${viewmodel.numCompleted}",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
