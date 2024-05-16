import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController textEmail = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Form(
        key: formKey,
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
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 300, top: 10),
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: SizedBox(
                              height: 60,
                              width: 450,
                              child: TextFormField(
                                controller: textEmail,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  labelText: 'E-mail',
                                  hintText: 'Admin@gmail.com',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black45,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) {
                                  bool capital = false;
                                  bool space = false;
                                  bool space1 = false;
                                  if (value!.isEmpty) {
                                    return 'field must be required!';
                                  } else if (!value.contains('@gmail.com')) {
                                    return 'Enter @gmail.com !';
                                  } else if (value.length <= 10) {
                                    return 'Enter valid E-mail';
                                  }
                                  for (int i = 0; i < value.length; i++) {
                                    if (value[i] != value[i].toLowerCase()) {
                                      capital = true;
                                    }
                                  }
                                  if (capital) {
                                    return 'Capital latter not allowed !!';
                                  }
                                  for (int i = 0; i < value.length; i++) {
                                    int char = value.codeUnitAt(i);
                                    if ((char > 32 && char <= 45) ||
                                        (char >= 58 && char <= 63) ||
                                        (char >= 91 && char <= 96) ||
                                        (char >= 123 && char <= 126) ||
                                        (char == 47)) {
                                      space = true;
                                    }
                                    if (char == 32) {
                                      space1 = true;
                                    }
                                  }
                                  if (space) {
                                    return 'Spacial character are not allowed !!';
                                  }
                                  if (space1) {
                                    return 'Space are not allowed !!';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(' Use your google account'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 400),
                      child: Text(
                        ' Forgot email?',
                        style: TextStyle(
                            color: Color(0xff0958cf),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 410, top: 90),
                  child: Row(
                    children: [
                      Text(
                        'Not Your computer? Use Guest mode to sign in privately.',
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                      Text(
                        'Learn more',
                        style: TextStyle(
                            color: Color(0xff0958cf),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 600, top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Create account',
                        style: TextStyle(
                            color: Color(0xff0958cf),
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: OutlinedButton(
                          onPressed: () {
                            bool res = formKey.currentState!.validate();
                            if (res) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('E-mail created Successfully !!'),
                                ),
                              );
                              email = textEmail.text;
                              Navigator.of(context)
                                  .pushNamed('/login', arguments: email);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      action: SnackBarAction(
                                        label: 'Refresh',
                                        onPressed: () {
                                          formKey.currentState!.reset();
                                        },
                                      ),
                                      content:
                                          Text('Required maile format !!')));
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String email = 'Enter email';
