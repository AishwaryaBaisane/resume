import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/global/global.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

GlobalKey<FormState> formKey = GlobalKey();

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.35,
                width: width * 0.90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/login.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 15),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xff1c4273),
                          size: 25,
                        ),
                        SizedBox(
                          height: height * 0.06,
                          width: width * 0.80,
                          child: TextFormField(
                            controller: textName,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              hintStyle: TextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(0xff1c4273),
                          size: 25,
                        ),
                        SizedBox(
                          height: 60,
                          width: width * 0.8,
                          child: TextFormField(
                            controller: textEmail,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              hintText: 'E-mail',
                            ),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            validator: (value) {
                              bool capital = false;
                              bool space = false;
                              bool space1 = false;
                              if (value!.isEmpty) {
                                return 'field must be required!';
                              } else if (!value.contains('@gmail.com')) {
                                return 'Enter @gmail.com !';
                              } else if (value.length <= 10) {
                                return 'Enter valid E-mail';
                              }
                              for (int i = 0; i < value.length; i++) {
                                if (value[i] != value[i].toLowerCase()) {
                                  capital = true;
                                }
                              }
                              if (capital) {
                                return 'Capital latter not allowed !!';
                              }
                              for (int i = 0; i < value.length; i++) {
                                int char = value.codeUnitAt(i);
                                if ((char > 32 && char <= 45) ||
                                    (char >= 58 && char <= 63) ||
                                    (char >= 91 && char <= 96) ||
                                    (char >= 123 && char <= 126) ||
                                    (char == 47)) {
                                  space = true;
                                }
                                if (char == 32) {
                                  space1 = true;
                                }
                              }
                              if (space) {
                                return 'Spacial character are not allowed !!';
                              }
                              if (space1) {
                                return 'Space are not allowed !!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.lock_clock,
                          color: Color(0xff1c4273),
                          size: 30,
                        ),
                        // SizedBox(width: 20,),
                        SizedBox(
                          height: 60,
                          width: width * 0.8,
                          child: TextFormField(
                            controller: textPassword,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: 'Password'),
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            validator: (value) {
                              bool capital = false;
                              bool small = false;
                              bool charctor = false;
                              bool space1 = false;
                              bool digit = false;
                              if (value!.isEmpty) {
                                return 'field must be required!';
                              } else if (value.length <= 8) {
                                return 'Password must be greater than 8 !!';
                              }
                              for (int i = 0; i < value.length; i++) {
                                if (value[i] != value[i].toLowerCase()) {
                                  capital = true;
                                }
                                if (value[i] == value[i].toLowerCase()) {
                                  small = true;
                                }
                              }
                              if (!capital) {
                                return ' Enter minimum 1 Capital latter !!';
                              }
                              if (!small) {
                                return ' Enter minimum 1 Small latter !!';
                              }
                              for (int i = 0; i < value.length; i++) {
                                int char = value.codeUnitAt(i);
                                if ((char >= 33 && char <= 45) ||
                                    (char >= 58 && char <= 64) ||
                                    (char >= 91 && char <= 96) ||
                                    (char >= 123 && char <= 126) ||
                                    (char == 47)) {
                                  charctor = true;
                                }
                                if (char == 32) {
                                  space1 = true;
                                }
                                if ((char >= 48 && char <= 57)) {
                                  digit = true;
                                }
                              }
                              if (!charctor) {
                                return 'Enter minimum 1 Spacial character  !!';
                              }
                              if (space1) {
                                return 'Space are not allowed !!';
                              }
                              if (!digit) {
                                return 'Enter minimum 1 digit !!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  bool res = formKey.currentState!.validate();
                  if (res) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Successfully !!')));

                    Navigator.of(context)
                        .pushNamed('/home', arguments: textName);
                  }
                },
                child: Container(
                  height: height * 0.06,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 3,
                      width: width * 0.4,
                      color: Colors.black12,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Container(
                      height: 3,
                      width: width * 0.4,
                      color: Colors.black12,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Center(
                        child: Image(
                          image: AssetImage('assets/img/google.png'),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 20),
                child: Row(
                  children: [
                    Text(
                      'New to resumeBuilder?  ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Register here',
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//
// void setState(Null Function() param0) {
// }
//
