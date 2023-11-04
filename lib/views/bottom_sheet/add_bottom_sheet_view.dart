import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_advanced/view_model/view_model.dart';

import '../../models/tasks.dart';

class addBottomSheet extends StatelessWidget {
  const addBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entrycontroller = TextEditingController();
    return Consumer<ViewModel>(
      builder: (context, viewmodel, child) {
        return Expanded(
          flex: 10,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 80,
              child: Center(
                child: SizedBox(
                  height: 40,
                  width: 250,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          onSubmitted: (value) {
                            if (entrycontroller.text.isNotEmpty) {
                              Task newTask = Task(entrycontroller.text, false);
                              viewmodel.addTask(newTask);
                              entrycontroller.clear();
                            }
                            Navigator.of(context).pop;
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none))),
                          autofocus: true,
                          autocorrect: false,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          controller: entrycontroller,
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent),
                                onPressed: () {
                                  if (entrycontroller.text.isNotEmpty) {
                                    Task newTask =
                                        Task(entrycontroller.text, false);
                                    viewmodel.addTask(newTask);
                                    entrycontroller.clear();
                                  }
                                  Navigator.of(context).pop;
                                },
                                child: Text("Save")),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
