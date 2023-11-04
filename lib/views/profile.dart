import 'package:flutter/material.dart';
import 'package:todo_advanced/views/header.dart';
import 'package:todo_advanced/views/signin_form.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My profile", style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.orangeAccent,
        ),


        body: Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Center(
            child: Column(
              children: [ Row(crossAxisAlignment: CrossAxisAlignment.end,children: [Container(child: Image.asset('images/picture.png'),width: 100, height: 100,)],),

                Row(
                  children: [Icon(Icons.person),SizedBox(width: 5,),
                    Text(
                      "Name:",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Mona Elkateb",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
                Row(
                  children: [Icon(Icons.numbers_rounded), SizedBox(width: 5,)
                    ,Text(
                      "Age:",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("32",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
                Row(
                  children: [Icon(Icons.email),SizedBox(width: 5,),
                    Text(
                      "Email:",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("mona.elkateb91@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
                Row(children: [Icon(Icons.phone),SizedBox(width: 5,),
                  Text(
                    "Phone:",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("01008737533",
                      style: TextStyle(
                        fontSize: 20,
                      ))

                ],)
               , Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => headerView()));
                        },
                        child: const Text("Home page"))
                  ],
                ),
                Expanded(flex:1,child: login(),)

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
