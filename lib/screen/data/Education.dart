import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume/screen/data/Skills.dart';

import '../../utils/global/global.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Education',
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
              ...List.generate(
                ControllerList.length,
                (index) => Container(
                    // padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    height: height * 0.5 - 60,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            height: height * 0.1 - 50,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Color(0xff8596a0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '   Education',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      ControllerList.removeAt(index - 1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField(
                            'school/University', ControllerList[index].txtSchool!),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField(
                            'Course', ControllerList[index].txtCourse!),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField(
                            'Grade', ControllerList[index].txtGrade!),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField(
                            'Year', ControllerList[index].txtYear!),
                      ],
                    )),
              ),
            ],
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            setState(() {
              ControllerList.add(ControllerModel(
                  txtCourse: txtCourse,
                  txtGrade: txtGrade,
                  txtYear: txtYear,
                  txtSchool: txtSchool));
            });
          },
          child: Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'ADD',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget buildTextFormField(String label, TextEditingController controller) {
    return SizedBox(
      width: 340,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class ControllerModel {
  TextEditingController? txtSchool;
  TextEditingController? txtCourse;
  TextEditingController? txtGrade;
  TextEditingController? txtYear;

  ControllerModel(
      {this.txtSchool, this.txtCourse, this.txtGrade, this.txtYear});
}

List<ControllerModel> ControllerList = [
  ControllerModel(
      txtSchool: textSchool,
      txtYear: textYear,
      txtGrade: textGrade,
      txtCourse: txtCourse)
];

TextEditingController txtSchool = TextEditingController();
TextEditingController txtCourse = TextEditingController();
TextEditingController txtGrade = TextEditingController();
TextEditingController txtYear = TextEditingController();
