import 'package:flutter/material.dart';
import ' Image Picker in Flutter/ImageFlutter.dart';
import 'Screen/LoginPage.dart';
import 'Screen/homePage.dart';
import 'Screen/login2.dart';
import 'loginUi/firstPage.dart';
import 'loginUi/loginPage.dart';

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
        '/': (context) => Profile(),
        '/data': (context) => DataPage(),
        '/loGin': (context) => LoginPage(),
        '/Login': (context) => Loginpage(),
        '/login': (context) => Login2(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
