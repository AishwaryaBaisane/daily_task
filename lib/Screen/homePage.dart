import 'package:flutter/material.dart';


import 'LoginPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

GlobalKey<FormState> Formkey2 = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xfff0f3f8),
        body: Form(
          key: Formkey2,
          child: Center(
            child: Container(
              height: 350,
              width: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.black38)],
              ),
              child: Center(
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200, top: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/img/google2.png"),
                        ),
                        Text(
                          'o',
                          style: TextStyle(color: Colors.red, fontSize: 40),
                        ),
                        Text(
                          'o',
                          style: TextStyle(
                              color: Colors.amberAccent, fontSize: 40),
                        ),
                        Text(
                          'g',
                          style:
                          TextStyle(color: Colors.blueAccent, fontSize: 40),
                        ),
                        Text(
                          'l',
                          style:
                          TextStyle(color: Colors.blueAccent, fontSize: 40),
                        ),
                        Text(
                          'e',
                          style: TextStyle(color: Colors.red, fontSize: 40),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text(
                      'Welcome back',
                      style: TextStyle(fontSize: 25, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(spreadRadius: 1, color: Colors.black26),
                          ]),
                      child: Center(child: Text(email)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'You can update your Password now if you forgotten it.',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 80),
                        child: Text(
                          'Update password',
                          style: TextStyle(color: Color(0xff0958cf)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 80),
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color(0xff0958cf),
                              borderRadius: BorderRadius.circular(3)
                          ),
                          child: Center(child: Text('Continue',
                            style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
                  )

                ]),
              ),
            ),
          ),
        ));
  }
}




