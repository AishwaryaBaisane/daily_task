import 'package:flutter/cupertino.dart';
import '../DynamicTextFild/TextFild.dart';
import '../DynamicTextFild/ViewScrren.dart';
import '../GoogleLogin/LoginPage.dart';
import '../GoogleLogin/homePage.dart';
import '../GoogleLogin/login2.dart';
import '../RegistrationApp/Id_Card.dart';
import '../RegistrationApp/Registration_Form.dart';
import '../Screen/ Image Picker in Flutter/ImageFlutter.dart';
import '../Screen/drawer/drawer.dart';
import '../Screen/loginUi/firstPage.dart';
import '../Screen/loginUi/loginPage.dart';
import '../pdf/invoice_Scrren.dart';
import '../pdf/printing.dart';

class AppRouts{
  static Map<String, Widget Function(BuildContext)> routes =
  {
    '/text': (context) => TextField(),
    '/view': (context) => ViewScreen(),
    '/id': (context) => Id_Card(),
    '/': (context) => InvoicePage(),
    '/pdf': (context) => printing(),
    '/storage': (context) => Registration(),
    '/drawer': (context) => DrawerPage(),
    '/profile': (context) => Profile(),
    '/data': (context) => DataPage(),
    '/Login': (context) => LoginPage(),
    '/sv': (context) => Loginpage(),
    '/login': (context) => Login2(),
    '/home': (context) => HomePage(),
  };
}