import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_advanced/views/Textfield._signin.dart';

import '../view_model/view_model.dart';

class login extends StatelessWidget {
  login({super.key});
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Scaffold(
          backgroundColor: Colors.grey[300],
          body: SingleChildScrollView(
              child: Center(
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Icon(
                      Icons.face_4,
                      size: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Please Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        controller: usernamecontroller,
                        hintText: "username",
                        obscureText: false),
                    MyTextField(
                        controller: passwordcontroller,
                        hintText: "password",
                        obscureText: true),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot password?"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text("sign in"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SafeArea(
                                  child: Center(
                                          child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                            children: [Icon(Icons.face_2_rounded, size: 50,),
                                              Text(
                                        'Welcome ${usernamecontroller.text}! you are Signed in now ',
                                        style: TextStyle(
                                              color: Colors.orange,
                                              decoration: TextDecoration.none,

                                        ),
                                      ),
                                            ],
                                          )),
                                )));
                      },
                    )
                  ]),
            ),
          )));
    });
  }
}
