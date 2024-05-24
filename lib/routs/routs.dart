import 'package:flutter/material.dart';
import 'package:resume/screen/data.dart';
import 'package:resume/screen/homePage.dart';
import 'package:resume/screen/login.dart';
import 'package:resume/screen/splash.dart';
import '../screen/data/Education.dart';
import '../screen/data/Experience.dart';
import '../screen/data/PersonalDetail.dart';
import '../screen/data/Reference.dart';
import '../screen/data/Skills.dart';
import '../screen/data/object.dart';
import '../screen/data/pdf.dart';
import '../screen/objects.dart';



class AppRouts {
  static Map <String, Widget Function(BuildContext)> routes =  {

    '/' :(context) => SplashScreen(),
    '/edu' :(context) => Education(),
    '/personal' :(context) => PersonalInfo(),
    '/login' :(context) => loginPage(),
    '/home' :(context) => HomePage(),
    '/data' :(context) => data1(),
    '/exp' :(context) => Experience(),
    '/skill' :(context) => SkillPage(),
    '/Objective' :(context) => ObjectivePage(),
    '/reference' :(context) => ReferencePage(),
    '/SelectObject' :(context) => ObjectPage(),
    '/pdf' :(context) => PdfScreen(),


  };
}
