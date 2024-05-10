import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

GlobalKey<FormState> Formkey1 = GlobalKey();
// TextEditingController textEmail = TextEditingController();
TextEditingController textPassword = TextEditingController();

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Form(
        key: Formkey1,
        child: Center(
          child: Container(
            height: 350,
            width: 900,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.black38)],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/img/google2.png"),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(

                      padding: EdgeInsets.only(right: 0, left: 20),
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:

                      EdgeInsets.only(right: 230, left: 20, bottom: 70,top: 30),
                      child: Text(
                        'Use your Google Account',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: SizedBox(
                              height: 60,
                              width: 450,
                              child: TextFormField(
                                controller: textPassword,
                                keyboardType: TextInputType.number,
                                // obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'password',
                                  hintText: '34d@#GCD',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'field must be requird!';
                                  }
                                  else if (value.length<=4) {
                                    return 'must be > 4';
                                  }
                                  // controller : controller,
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 360, bottom: 10),
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(color: Color(0xff0958cf),fontWeight: FontWeight.bold),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 410, top: 0),
                  child: Row(
                    children: [
                      Text(
                        'Not Your computer? Use Guest mode to sign in privately.',
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                      Text(
                        'Learn more',

                        style: TextStyle(color: Color(0xff0958cf),fontWeight: FontWeight.bold),

                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 600, top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Creat account',

                        style: TextStyle(color: Color(0xff0958cf),fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: OutlinedButton(
                          onPressed: () {
                            bool res = Formkey1.currentState!.validate();
                            if (res) {
                              password = textPassword.text;

                              Navigator.of(context).pushNamed('/home',arguments: email);

                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              // height: 35,
                              // width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle( color: Colors.blueAccent,),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String password = 'Enter password';
