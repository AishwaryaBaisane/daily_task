import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.black38),
        backgroundColor: Color(0xff2196f3),
        title: Text(
          'Image Picker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              // color: Color(0xffdfe4e7),
              image: (fileImage != null)
                  ? DecorationImage(
                      fit: BoxFit.cover, image: FileImage(fileImage!))
                  : DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/person.jpg')),
            ),
          ),
          // color: Colors.amber
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async {
                  XFile? xfileImage =
                      await imagePicker.pickImage(source: ImageSource.camera);
                  setState(() {
                    fileImage = File(xfileImage!.path);
                  });
                },
                icon: Icon(
                  Icons.camera_alt,
                  size: 50,
                ),
              ),
              IconButton(
                onPressed: () async {
                  XFile? xfileImage =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage = File(xfileImage!.path);
                  });
                },
                icon: Icon(
                  Icons.image,
                  size: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Upload Me',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
