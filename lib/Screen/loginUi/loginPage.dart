import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double  width= MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xfff5f7f7),
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Container(
                  height: 270,
                  width: 270,
                  child: Image.asset(
                    'assets/img/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'Make it work,make it right,make it fast.',
                  style: TextStyle(fontSize: 19),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.1,
                width: width * 0.85,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 25,
                      ),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                          width: 2.5,
                        ),
                      )),
                ),
              ),

              SizedBox(
                height: height * 0.1,
                width: width * 0.85,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: Colors.black,
                      size: 25,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 17),
                ),
              ),
              Container(
                height: height * 0.07,
                width: width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            SizedBox(
              height: 15,
            ),
              Text(
                'OR',
                style: TextStyle(color: Colors.black,fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: height * 0.07,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2.5, color: Colors.black38),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Center(
                    child: Row(
                      children: [
                        Center(child: Container(height: 25,child: Image(image: AssetImage('assets/img/google2.png')))),
                        Text(
                          '\t\t\tSign-In with Google',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Dont have an Account?',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
