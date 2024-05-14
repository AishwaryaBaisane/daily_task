import 'package:flutter/material.dart';
import 'LoginPage.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

GlobalKey<FormState> formKey = GlobalKey();
// TextEditingController textEmail = TextEditingController();
TextEditingController textPassword = TextEditingController();

class _Login2State extends State<Login2> {
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
                        'Hi User',
                        style: TextStyle(color: Colors.black, fontSize: 20),
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
                                controller: textPassword,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Aisha@23',
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF0B57D0),
                                      width: 1.8,
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                validator: (value) {
                                  bool capital = false;
                                  bool small = false;
                                  bool charctor = false;
                                  bool space1 = false;
                                  bool digit = false;
                                  if (value!.isEmpty) {
                                    return 'field must be required!';
                                  }  else if (value.length <= 8) {
                                    return 'Password must be greater than 8 !!';
                                  }
                                  for (int i = 0; i < value.length; i++) {
                                    if (value[i] != value[i].toLowerCase()) {
                                      capital = true;
                                    }
                                    if (value[i] == value[i].toLowerCase()) {
                                      small = true;
                                    }
                                  }
                                  if (!capital) {
                                    return ' Enter minimum 1 Capital latter !!';
                                  }
                                  if(!small)
                                    {
                                      return ' Enter minimum 1 Small latter !!';
                                    }
                                  for (int i = 0; i < value.length; i++) {
                                    int char = value.codeUnitAt(i);
                                    if ((char >= 33 && char <= 45) ||
                                        (char >= 58 && char <= 64) ||
                                        (char >= 91 && char <= 96) ||
                                        (char >= 123 && char <= 126) ||
                                        (char == 47)) {
                                      charctor = true;
                                    }
                                    if (char == 32) {
                                      space1 = true;
                                    }
                                    if((char>=48 && char<=57))
                                      {
                                        digit = true;

                                      }
                                  }
                                  if (!charctor) {
                                    return 'Enter minimum 1 Spacial character  !!';
                                  }
                                  if (space1) {
                                    return 'Space are not allowed !!';
                                  }
                                  if(!digit)
                                    {
                                      return 'Enter minimum 1 digit !!';
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
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          height: 30,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('$email'),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 380),
                      child: Text(
                        ' Forgot password?',
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
                                  const SnackBar(
                                      content: Text(
                                          'Password created Successfully !!')));
                              password = textPassword.text;
                              Navigator.of(context)
                                  .pushNamed('/home', arguments: email);
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                action: SnackBarAction(
                                  label: 'Refresh',
                                  onPressed: () {
                                    formKey.currentState!.reset();
                                  },
                                ),
                                content: Text('Required password format !!'),
                              ));
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

String password = 'Enter password';
