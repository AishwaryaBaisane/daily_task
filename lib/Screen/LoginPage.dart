import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

GlobalKey<FormState> Formkey = GlobalKey();
TextEditingController textEmail = TextEditingController();
// TextEditingController textPassword = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Form(
        key: Formkey,
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
                          EdgeInsets.only(right: 230, left: 20, bottom: 70),
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
                                controller: textEmail,
                                keyboardType: TextInputType.number,
                                // obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  hintText: 'Admin@gmail.com',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'field must be requird!';
                                  }
                                  else if(value.characters!='gmail.com')
                                    {
                                      return 'Enter @ !';
                                    }
                                   else if (value.length! < 4) {
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
                                  'Forgot email?',
                                  style: TextStyle(color: Colors.blue),
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
                        style: TextStyle(color: Colors.blueAccent),
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
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: OutlinedButton(
                          onPressed: () {
                            bool res = Formkey.currentState!.validate();
                            if (res) {
                              email = textEmail.text;
                              // password = textPassword.text;
                              Navigator.of(context).pushNamed('/login');
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

String email = 'Enter email';

// import 'package:flutter/material.dart';
// // import 'package:login/showscreen.dart';
//
// import 'login2.dart';
//
// class homescreen extends StatefulWidget {
//   const homescreen({Key? key}) : super(key: key);
//
//   @override
//   State<homescreen> createState() => _homescreenState();
// }
//
// TextEditingController textEmail=TextEditingController();
// TextEditingController textPassword=TextEditingController();
//
// class _homescreenState extends State<homescreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset(
//               "assets/imges.png",
//               height: 300,
//             ),
//             Container(
//               width: double.infinity,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.black12,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//               child: Center(
//                 child: Text(
//                   "Login to Your Account",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Expanded(
//
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white54,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceAround,
//
//                         children: [
//                           SizedBox(
//                             width: 120,
//                           ),
//                           Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(shape: BoxShape.circle),
//                             child:
//                             Image.asset("assets/ff.png", fit: BoxFit.cover),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(shape: BoxShape.circle),
//                             child:
//                             Image.asset("assets/i.jpg", fit: BoxFit.cover),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(shape: BoxShape.circle),
//                             child:
//                             Image.asset("assets/gg.png", fit: BoxFit.cover),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "Or use Your email account",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextField(
//                           controller: textEmail,
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             hintText: 'abc@gmail.com',
//                             prefixIcon: Icon(
//                               Icons.mail,
//                               color: Colors.blue,
//                             ),
//                             label: Text("Email"),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextField(
//                           controller: textPassword,
//                           keyboardType: TextInputType.number,
//                           obscureText: true,
//                           obscuringCharacter: '*',
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             hintText: '12345678',
//                             suffixIcon: Icon(
//                               Icons.remove_red_eye,
//                               color: Colors.grey,
//                             ),
//                             prefixIcon: Icon(
//                               Icons.person,
//                               color: Colors.blue,
//                             ),
//                             label: Text("Password"),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 35,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           String email = textEmail.text;
//                           setState(() {
//
//                             email=textEmail.text;
//                             email=textPassword.text;
//                           });
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => showscreen(email: email, password: 'password',)),
//                           );
//                         },
//                         child: Container(
//                           height: 60,
//                           width: 300,
//                           decoration: BoxDecoration(
//                               color: Colors.indigo,
//                               borderRadius: BorderRadius.circular(20)),
//                           child: Center(
//                               child: Text("LOGIN",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold))),
//                         ),
//
//                       ),
//                       SizedBox(
//                         height: 80,
//                       ),
//                       Text(
//                         "Dont have an account ?",
//                         style: TextStyle(
//                           fontSize: 18,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
