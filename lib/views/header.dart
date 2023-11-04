import 'package:flutter/material.dart';
import 'package:todo_advanced/views/profile.dart';
import 'package:todo_advanced/views/task_info_view.dart';

class headerView extends StatelessWidget {
  const headerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Welcome, Mona", style: TextStyle(fontSize: 20)),
            backgroundColor: Colors.orangeAccent,
          ),
          body: Container( decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.orange), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> dashboard()));
                  }, child: const Text("Dashboard")),
                  Icon(Icons.task,size: 40, color: Colors.grey[800],)

                  ,ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>profile()));
                  }, child: const Text("My profile"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
