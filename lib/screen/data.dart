import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/utils/global/global.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

GlobalKey<FormState> formKey1 = GlobalKey();

class data1 extends StatefulWidget {
  const data1({super.key});

  @override
  State<data1> createState() => _data1State();
}

class _data1State extends State<data1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1),
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              )),
          backgroundColor: Colors.blue,
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/pdf');
              },
              child: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              '   ViewCV',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Form(
          key: formKey1,
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/personal');
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 100,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_rounded,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                    Text(
                                      'Personal\n  Details',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/edu');
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 100,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Image(
                                      height: 50,
                                      width: 40,
                                      color: Colors.blue,
                                      image:
                                          AssetImage('assets/img/shiksha.png'),
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/exp');
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 100,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Image(
                                      height: 50,
                                      width: 40,
                                      color: Colors.blue,
                                      image: AssetImage(
                                          'assets/img/businesman.png'),
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      'Experience',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/skill');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image(
                                height: 60,
                                width: 50,
                                color: Colors.blue,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/img/shild.png'),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Skills',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/Objective');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.flag,
                                color: Colors.blue,
                                size: 38,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Objective',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/reference');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Image(
                                height: 40,
                                width: 40,
                                color: Colors.blue,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/img/user.png'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Reference',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '   More Sections',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Image(
                              height: 45,
                              width: 45,
                              color: Color(0xff8594a2),
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/project.png'),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Projects',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Color(0xff8594a2),
                              size: 45,
                            ),
                            Text(
                              'Add More \n Section',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '   Manage Section',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: height * 0.1 - 15,
                        width: width * 0.9 + 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 4,
                              width: 15,
                            ),
                            Image(
                              height: 35,
                              width: 35,
                              color: Color(0xff8594a2),
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/right.png'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Rearrage/Headings',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
