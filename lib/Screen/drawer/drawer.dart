import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../global/List.dart';


class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.black26),
        backgroundColor: Color(0xff121315),
      ),
      backgroundColor: Color(0xff121315),
      drawer: Drawer(
        backgroundColor: Color(0xff2e2f33),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 80),
                  child: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
                ...List.generate(
                  icon.length,
                  (index) => ListTile(
                    leading: Icon(
                      icon[index],
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      txt[index],
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.assignment_late_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text('Spam',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text('Trash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text('Calender',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text('Setting',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
