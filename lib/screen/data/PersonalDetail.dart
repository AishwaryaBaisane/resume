import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/utils/global/global.dart';

import '../data.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'personal',
            style: TextStyle(color: Colors.white),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 115,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: (fileImage != null)
                                  ? DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(fileImage!))
                                  : DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/img/person.jpg'),
                                    ),
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
                                padding:
                                    const EdgeInsets.only(left: 65, top: 70),
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text(
                          'First Name',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            // color: Color(0xffecf1f5),
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(
                          // controller: txt,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.white),
                                // borderRadius: BorderRadius.circular(25),
                                ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          // color: Color(0xffecf1f5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                // borderSide: BorderSide(color: Colors.white),
                                // borderRadius: BorderRadius.circular(25),
                                ),
                            focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                                ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text('Address',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.07,
                width: width * 0.9,
                decoration: BoxDecoration(
                  // color: Color(0xffecf1f5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  controller: textAdd,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.white),
                        // borderRadius: BorderRadius.circular(25),
                        ),
                    focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(25),
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text('phone',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.07,
                width: width * 0.9,
                decoration: BoxDecoration(
                  // color: Color(0xffecf1f5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  controller: textPhone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(25),
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.07,
                width: width * 0.9,
                decoration: BoxDecoration(
                  // color: Color(0xffecf1f5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  controller: textDate,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    '       Select Gender',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              RadioListTile(
                title: const Text('Male'),
                value: 'Male',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                    print(gender);
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
                    print(gender);
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
                    print(gender);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadioList {}

String gender = 'Female';
