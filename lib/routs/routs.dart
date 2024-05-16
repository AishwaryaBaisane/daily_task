import 'package:flutter/cupertino.dart';
import '../GoogleLogin/LoginPage.dart';
import '../GoogleLogin/homePage.dart';
import '../GoogleLogin/login2.dart';
import '../Screen/ Image Picker in Flutter/ImageFlutter.dart';
import '../Screen/drawer/drawer.dart';
import '../Screen/loginUi/firstPage.dart';
import '../Screen/loginUi/loginPage.dart';

class AppRouts{
  static Map<String, Widget Function(BuildContext)> routes =
  {
    '/': (context) => DrawerPage(),
    '/profile': (context) => Profile(),
    '/data': (context) => DataPage(),
    '/drawer': (context) => LoginPage(),
    '/Login': (context) => Loginpage(),
    '/login': (context) => Login2(),
    '/home': (context) => HomePage(),
  };
}