import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_advanced/views/task_page.dart';
import 'package:todo_advanced/view_model/view_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Expanded( flex: 1,
          child: Column(
            children: [Image.asset('images/todo.png'),SizedBox(width: 10,),Text("Todo list app!", style:TextStyle(fontSize: 30) ,)],
          ),
        ),
        splashIconSize: 500,
        duration: 4000,
        splashTransition: SplashTransition.slideTransition,
        nextScreen: TaskPage());

  }
}
