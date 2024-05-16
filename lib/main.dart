import 'package:flutter/material.dart';
import 'Screen/ Image Picker in Flutter/ImageFlutter.dart';
import 'Screen/LoginPage.dart';
import 'Screen/drawer/drawer.dart';
import 'Screen/homePage.dart';
import 'Screen/login2.dart';
import 'Screen/loginUi/firstPage.dart';
import 'Screen/loginUi/loginPage.dart';


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
        '/drawer': (context) => DrawerPage(),
        '/profile': (context) => Profile(),
        '/data': (context) => DataPage(),
        '/': (context) => LoginPage(),
        '/Login': (context) => Loginpage(),
        '/login': (context) => Login2(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
