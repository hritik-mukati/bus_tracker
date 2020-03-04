import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:sanatorium/Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username="";
  var password="";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child:Stack(
          children:<Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:[Color(0xff129A8D) , Color(0xffA9E163)]
                ),
              ),
              width: MediaQuery.of(context).size.width,       //360
              height: MediaQuery.of(context).size.height,      //780
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:(550*height),left: (20)*width,right: (20)*width),
                    child:Center(
                      child:Container(
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomPaint(painter: Drawhorizontalline(true),),
                            Center(
                              child: Text("OR",style: TextStyle(fontSize: 25.0,color: Colors.black54),),
                            ),
                            CustomPaint(painter: Drawhorizontalline(false),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top:30.0*height,left: 25*width,right: 25*width),
                    child:Center(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal:60*width,vertical: 10*height),
                          color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  alignment:AlignmentDirectional.topStart,
                                  child:Image.asset("images/google.png",height: 30*height,width: 30*width,),
                                ),
                                Center(
                                    child:Text('Login With Google',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
                                ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          onPressed: (){
                            Fluttertoast.showToast(msg: "We are working on it",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIos: 1,
                            textColor: Colors.white,
                            fontSize: 16.0 );
                          },
                        )
                    ),
                  ),
                ],
              ),

            ),
            Container(              //Round Rectangle white background
              child: Center(
                   child:Container(
                    margin: EdgeInsets.only(top:(150.0)*height),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30.0),
                    ),
                    width: (320.0)*width,
                    height: (355.0)*height,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 60.0*height),
                          child: Text("Sign In!",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 24.0),),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top:15.0*height,left: 20.0*width,right: 20.0*width),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.mail),
                            hintText: "example@gmail.com",
                          ),
                          onChanged: (input){
                            username = input;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:20.0*height,left: 20.0*width,right: 20.0*width),
                        child:TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            hintText: "* * * * * * * * *",
                          ),
                          obscureText: true,
                          onChanged: (input){
                            password=input;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0*height,left: 170*width),
                        child: Container(
                          child: InkWell(
                            onTap: (){
                              Fluttertoast.showToast(msg: "forgot password!!");
                              showDialog(context: context,
                                child: new SimpleDialog(
                                  title: Text("If you have forgotten  your password you can reset it here." ,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 14.0),),
                                  children: <Widget>[
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal: 20.0*width),
                                      child: TextField(
                                        decoration:InputDecoration(
                                          hintText: "Enter E-mail to recover Password",
                                        ),
                                        onChanged: (input){
                                          //email to forgot password....
                                        },
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:EdgeInsets.only(top:10.0*height,left:30.0*width),
                                          child: FlatButton(
                                            color:Colors.blueGrey,
                                            child: Text("Send",style: TextStyle(color: Colors.white),),
                                            onPressed: (){
                                              //for mailing in forget password.....
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top:10.0*height,left: 50.0*width),
                                          child: FlatButton(
                                            color:Colors.blueGrey,
                                            child: Text("Cancel",textDirection: TextDirection.ltr,style: TextStyle(color:Colors.white),),                    //Cancel button in forget password...
                                            onPressed: (){
                                              Navigator.pop(context,"/Login");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                          },
                            child: Text("Forget Password ?",textAlign:TextAlign.right,textDirection: TextDirection.ltr,style: TextStyle(color: Colors.grey),),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top:30.0*height),
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 115.0*width,vertical: 10.0*height),
                            color: Color(0xff018577),
                            child: Text('LOGIN',style: TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.normal),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: (){
                              var login_data={};
                              login_data['username']=username;
                              login_data['password']=password;
                              String str=json.encode(login_data);
                              Fluttertoast.showToast(
                                  msg: "$str",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIos: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            },
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0*width,vertical: 10.0*height),
                        child: Row(
                          children: <Widget>[
                            Center(
                              child:Text("Don't have an Account ?",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            InkWell(
                              onTap: (){
                            Fluttertoast.showToast(msg: "signup");
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));//move to sign up page.........
                              },
                              child: Text("  SIGN UP ",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(              //Logo image at TOP ..
              child: Positioned(
                child: Center(
                  child:Container(
                    margin: EdgeInsets.only(top: 100.0*height),
                    width: 100*width,
                    height: 100*height,
                    child:Logoimage(),
                  ),
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}

class Logoimage extends StatelessWidget{//to show logo image.....
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage("images/logo-tr.png");
    Image image=Image(image: assetImage,);
    return Container(child: image,);
  }

}

class Drawhorizontalline extends CustomPainter {

  Paint _paint;
  bool reverse;

  Drawhorizontalline(this.reverse) {
    _paint = Paint()
      ..color = Colors.white70
      ..strokeWidth = 0.5
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if(!reverse){
      canvas.drawLine(Offset(10.0, 0.0), Offset(100.0, 0.0), _paint);
    }
    else
    {
      canvas.drawLine(Offset(-100.0, 0.0), Offset(-10.0, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}