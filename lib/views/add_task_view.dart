import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_advanced/view_model/view_model.dart';
import 'package:todo_advanced/views/bottom_sheet/add_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Container(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                viewmodel.bottomSheetBuilder(addBottomSheet(), context);
              },
              child: Icon(
                Icons.add,
                size: 30,
              ),
            )),
      );
    });
  }
}
