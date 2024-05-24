import 'package:flutter/material.dart';
import 'package:resume/utils/global/global.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
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
            'Experience',
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 30,
                      // ),
                      Row(
                        children: [
                          // SizedBox(
                          //   width: 30,
                          // ),
                          // Text('Course/Degree',
                          //     style: TextStyle(
                          //         color: Colors.black54, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          // color: Color(0xffecf1f5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          controller: textCompname,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Company Name',
                            labelStyle: TextStyle(color: Colors.black45),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          // color: Color(0xffecf1f5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          controller: textJobTile,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Job Title',
                            labelStyle: TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          // Text('Grade/Score',
                          //     style: TextStyle(
                          //         color: Colors.black54, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.07,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              // color: Color(0xffecf1f5),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: textStartDate,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Start Date',
                                labelStyle: TextStyle(color: Colors.black45),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  // borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 2),
                                  // borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.07,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              // color: Color(0xffecf1f5),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: textEndDate,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'End Date',
                                labelStyle: TextStyle(color: Colors.black45),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  // borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 2),
                                  // borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          // Text('Year',
                          //     style: TextStyle(
                          //         color: Colors.black54, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          // color: Color(0xffecf1f5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          controller: textDetail,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Details',
                            labelStyle: TextStyle(color: Colors.black45),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              // borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 90,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/data');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 270),
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
            ],
          ),
        ),
      ),
    );
  }
}
