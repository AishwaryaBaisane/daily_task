import 'package:flutter/material.dart';
import 'package:task3/RegistrationApp/Registration_Form.dart';

class Id_Card extends StatefulWidget {
  const Id_Card({super.key});

  @override
  State<Id_Card> createState() => _Id_CardState();
}

class _Id_CardState extends State<Id_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.blueAccent,
          title: Text(
            'ID Card ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          leading: InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop('/');
                });
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        body: Column(
          children: [
            Container(
              width: 500,
              height: 748,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/id_card.png'),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 125),
                      child: Container(
                        height: 210,
                        width: 210,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: FileImage(fileImage!)),
                        ),
                      ),
                    ),
                    // Image(
                    //   image: FileImage(fileImage!),
                    //   height: 200,
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    Text(
                      '${txtName.text} ${txtSurname.text}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'CEO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'ID No :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '607635',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Gender :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${gender.toString()}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'State :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${txtState.text}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Skill :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              ...List.generate(
                                Hobby.length,
                                (index) => Row(
                                  children: [
                                    Text(
                                      '${Hobby[index]},',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'E-mail :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${txtEmail.text}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Phone :\t\t\t ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '+${txtNumber.text}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
//Center(
//         child: Column(
//           children: [
//             Image(
//               image: FileImage(fileImage!),
//               height: 200,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               '${txtName.text} ${txtSurname.text}',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(50),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         'ID No :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         '607635',
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'Gender :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         '${gender.toString()}',
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'State :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         '${txtState.text}',
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'Skill :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       ...List.generate(
//                         Hobby.length,
//                         (index) => Row(
//                           children: [
//                             Text(
//                               '${Hobby[index]},',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'E-mail :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         '${txtEmail.text}',
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'Phone :\t\t\t ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         '+${txtNumber.text}',
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
