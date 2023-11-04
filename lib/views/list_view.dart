import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_advanced/view_model/view_model.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => listviewState();
}

class listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Container(
          child: ListView.separated(
            padding: const EdgeInsets.all(15),
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: viewmodel.numTasks,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.grey[600]),
                height: 50,
                width: 50,
                child: Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    viewmodel.deleteTasks(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30)),
                        color: Colors.grey[100]),
                    child: ListTile(
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: const BorderSide(width: 2, color: Colors.orange),
                        checkColor: Colors.white,
                        activeColor: Colors.orangeAccent,
                        value: viewmodel.getTaskValue(index),
                        onChanged: (value) {
                          viewmodel.setTaskValue(index, value!);
                        },
                      ),
                      title: Text(
                        viewmodel.getTaskTitle(index),
                        style: const TextStyle(fontSize: 17),
                      ),
                      trailing: Wrap(spacing: 12, children: [
                        IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => SimpleDialog(
                                        children: [
                                          TextField(
                                            onChanged: (value) {
                                              setState(() {
                                                entryController.text = value;
                                              });
                                            },
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.orangeAccent,
                                                      shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20))
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  viewmodel.updateTask(index,
                                                      entryController.text);
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: const Text("update"))
                                        ],
                                      ));
                            }),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                          ),
                          onPressed: () {
                            viewmodel.deleteTask(index);
                          },
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            },
          ),
          decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30))));
    });
  }
}
