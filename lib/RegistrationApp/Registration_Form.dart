import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


ImagePicker imagePicker = ImagePicker();
File? fileImage;

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtName = TextEditingController();
TextEditingController txtSurname = TextEditingController();
TextEditingController txtState = TextEditingController();
TextEditingController txtNumber = TextEditingController();




class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black38,
        title: const Text(
          'Registration Form',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: (fileImage != null)
                            ? DecorationImage(
                                fit: BoxFit.cover, image: FileImage(fileImage!))
                            : DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/img/person.jpg')),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          XFile? xfileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            fileImage = File(xfileImage!.path);
                          });
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 90, left: 100),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text(
                    'Details :-',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 190,
                      child: TextFormField(
                        controller: txtName,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 190,
                      child: TextFormField(
                        controller: txtSurname,
                        decoration: InputDecoration(
                          labelText: 'Surname',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 70,
                  // width: 185,.
                  child: TextFormField(
                    controller: txtState,
                    decoration: InputDecoration(
                      labelText: 'State',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 70,
                  // width: 185,
                  child: TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 70,
                  // width: 185,
                  child: TextFormField(
                    controller: txtNumber,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 10),
                  child: Text(
                    'Gender :-',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RadioListTile(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Other'),
                  value: 'Other',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('C language'),
                  value: C,
                  onChanged: (value) {
                    setState(() {
                      C = value!;
                      if(value)
                      {
                        Hobby.add('C language');
                      }
                      else
                      {
                        Hobby.remove('C language');
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('CPP'),
                  value: Cpp,
                  onChanged: (value) {
                    setState(() {
                      Cpp = value!;
                     if(value)
                       {
                         Hobby.add('Cpp');
                       }
                     else
                       {
                         Hobby.remove('Cpp');
                       }
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('Flutter'),
                  value: Flutter,
                  onChanged: (value) {
                    setState(() {
                      Flutter = value!;
                      if(value)
                      {
                        Hobby.add('Flutter');
                      }
                      else
                      {
                        Hobby.remove('Flutter');
                      }
                    });
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/id');
                  },
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadioList {}

String gender = 'Male';
List Hobby = [];
bool C = false;
bool Cpp = false;
bool Flutter = false;
