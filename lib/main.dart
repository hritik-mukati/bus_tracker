import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanatorium/Login.dart';
import 'package:sanatorium/MyCart.dart';
import 'package:sanatorium/Home.dart';
void main(){
  runApp(
    MaterialApp(
      home: Splashscreen(),
      routes: <String ,WidgetBuilder>{
        "/Login":  (BuildContext context) => Login(),
        "/Home": (BuildContext context) =>Home(),
    },
      theme: ThemeData(
        primaryColor: Color(0xff018577),
        accentColor: Colors.white,
        brightness: Brightness.light,
      ),

    ),
  );
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),()=>Navigator.pushNamed(context,'/Home') );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[Color(0xff129A8D) , Color(0xffA9E163)]
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage("images/hand.png"),
                  height: 120*height,
                  width: 120*width,
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 130.0*height),
                    child: Text("Good Health Good Life",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 17.0,color: Colors.white,fontWeight: FontWeight.bold),)
                ),

              ),
            ],
          )
        ],
      ),
    );
  }
}






