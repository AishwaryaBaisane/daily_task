import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:  Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  alignment: Alignment.center,
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/img/im2.png",color: Colors.white,),
                ),
              ),
              Text('Congratulation ',style: TextStyle(color: Colors.white,fontSize: 30),),
              Text('You Login Sucssesfully ',style: TextStyle(color: Colors.white,fontSize: 30),)
            ],
          ),


        ),
    );
  }
}
