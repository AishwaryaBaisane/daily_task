import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffe502),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 500,
              width: 400,
              child: Image.asset(
                'assets/img/login.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Build Awesome Apps',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            'Lets put your Creativity on the\n\t\t\t\t\t\tdevelopment highway.',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: () {
                  Navigator.of(context).pushNamed('/data');
                },
                  child: Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xffffe502),
                        border: Border.all(color: Colors.black54,width: 3)),
                    child: Center(child: Text('LOGIN',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                  ),
                ),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.black,
                      border: Border.all(color: Colors.black54,width: 3)),
                  child: Center(child: Text('SIGNUP',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
