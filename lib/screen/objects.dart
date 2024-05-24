import 'package:flutter/material.dart';
import 'package:resume/screen/data/object.dart';

import '../utils/global/global.dart';

class ObjectPage extends StatefulWidget {
  const ObjectPage({super.key});

  @override
  State<ObjectPage> createState() => _ObjectPageState();
}

class _ObjectPageState extends State<ObjectPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.pushReplacementNamed(context, '/objective');
              print(txtObjective.text);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          title: Text(
            "Select Objective",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ...List.generate(
                    objectList.length,
                    (index) => Container(
                      // height: 30,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,

                        // borderRadius: BorderRadius.circular(50),
                        // border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SelectableText(
                                      objectList[index]['name'],
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    // Text('${count}',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
