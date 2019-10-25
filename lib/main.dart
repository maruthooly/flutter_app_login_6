import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Login 06',
      home: LoginUI(),
      theme: ThemeData(
        canvasColor: Colors.transparent,
      ),
    ),
  );
}
class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/pole.jpg',
          ),
        ),
      ) ,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3.0,
          sigmaY: 3.0,
        ),
        child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ClipOval(
                                  child: Container(
                                    width: 20.0,
                                    height: 20.0,
                                    color: Color(0xFF052cdc),
                                  ),
                                ),
                                SizedBox(
                                  width:8.0 ,
                                ),
                                ClipOval(
                                  child: Container(
                                    width: 20.0,
                                    height: 20.0,
                                    color: Color(0xFF052cdc),
                                  ),

                                ),
                              ],
                            ),
                            Text(
                              'ENJOYLIFES',
                              style: prefix0.TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 38.0,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'LOVE ME LOVE MARKET',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                ClipOval(
                                  child: Container(
                                    width: 20.0,
                                    height: 20.0,
                                    color: Color(0xFF052cdc),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          hintText: 'Email',
                          hintStyle: prefix0.TextStyle(
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Color(0x77FFFFFF),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              30.0
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'password',
                          hintStyle: prefix0.TextStyle(
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Color(0x77FFFFFF),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                                30.0
                            ),
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
