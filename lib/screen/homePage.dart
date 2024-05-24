import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 130, top: 100),
                child: Text(
                  'Welcome!!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text('${textName.text}'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('${textEmail.text}'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 80, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xff053976),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff053976),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Rate us',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: Color(0xff053976),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Share App',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.privacy_tip,
                            color: Color(0xff053976),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color(0xff053976),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/data');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    // margin: EdgeInsets.all(10),
                    height: height * 0.6,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/home.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                // SizedBox(width: 30,),
              ],
            )
          ],
        ),
        bottomNavigationBar: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue, width: 5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 40,
              ),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  color: Colors.blue,
                  // color: Color(0Xff864AF9),
                  shape: BoxShape.circle),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/data');
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 28,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
