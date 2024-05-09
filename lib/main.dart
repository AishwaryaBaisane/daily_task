import 'package:flutter/material.dart';

import 'Screen/LoginPage.dart';
import 'Screen/homePage.dart';
import 'Screen/login2.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Loginpage(),
        '/login': (context) => Login2(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
