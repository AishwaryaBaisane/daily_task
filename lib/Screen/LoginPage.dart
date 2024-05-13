import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController textEmail = TextEditingController();
// TextEditingController textPassword = TextEditingController();

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
                                  labelText: 'E-mail',
                                  hintText: 'Admin@gmail.com',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'field must be required!';
                                  } else if (!value.contains('@gmail.com')) {
                                    return 'Enter @gmail.com !';
                                  } else if (value.length < 4) {
                                    return 'must be > 4';
                                  }
                                  // controller : controller,
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
                                  const SnackBar(content: Text('Success fully create email !!'))
                              );
                              email = textEmail.text;
                              Navigator.of(context)
                                  .pushNamed('/login', arguments: email);
                            }
                            else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Required maile format !!'))
                                );
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
