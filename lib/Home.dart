import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanatorium/MyCart.dart';
import 'package:sanatorium/Apointments.dart';
import 'package:sanatorium/Login.dart';
import 'package:sanatorium/Search.dart';
import 'package:sanatorium/Signup.dart';
import 'dart:math';


void main(){
  runApp(
    MaterialApp(
      home: Home(),
      routes: <String ,WidgetBuilder>{
        "/Login":  (BuildContext context) => new Login(),
        "/Apointments": (BuildContext context)=> new Apointments(),
      },
      theme: ThemeData(
        primaryColor: Color(0xff018577),
        accentColor: Colors.white,
        brightness: Brightness.light,
      ),

    ),
  );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkinput =false ;
  int gender =1;
  Widget cusSearchBar= Text("AppBar");

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("SANATORIUM HELTH CARE",textDirection: TextDirection.ltr, ),
        elevation: 0.0,
        actions: <Widget>[
        ],
      ),
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:height*15.0),
                    child: Image(width: 250*width,
                    height: 250*height,
                    image: AssetImage("images/front_logo.jpg"),
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text('DashBoard'),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('Apointments'),
                    onTap: (){
                      Navigator.push(context ,MaterialPageRoute(builder: (context) => Apointments()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Cart'),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => MyCart()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.assignment),
                    title: Text('Reports'),
                    onTap: (){},
                  )
                ],
              )
            ],
          )
      ),
      body:ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius:new BorderRadius.only(
                      bottomLeft:  const  Radius.circular(40.0),
                      bottomRight: const  Radius.circular(40.0),),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:[Color(0xff018577),Color(0xff018577)],
                  ),
                ),
                width: MediaQuery.of(context).size.width,       //360
                height: 150*height,      //780
              ),
              Container(
                child: Column(
                  children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0*width,top: 20.0*height,right: 10.0*width),
                    child: TextField(
                      decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4.0),    //reduces the width of the search box..
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search for Doctors, Clinics And Hospitals..",
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                        filled: true,
                        fillColor: Colors.white70),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));
                      },
                    ),
                ),

                  Padding(
                    padding:EdgeInsets.only(top: 35.0*height),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left:10.0*width ),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                              Material(
                                elevation: 2.0,
                                shape: CircleBorder(),
                                clipBehavior: Clip.hardEdge,
                                color: Color(0xff018577),
                                child: Ink.image(
                                  image: AssetImage('images/doctor_log.jpg'),
                                  fit: BoxFit.cover,
                                  width: 70.0,
                                  height: 80.0,
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0*height),
                                  child:Text("Attend",textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0.5*height),
                                child: Center(
                                  child: Text("Meeting you\nhave attended",textDirection: TextDirection.ltr, textAlign: TextAlign.center,maxLines: 2,style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),),
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ),
                      Container(
                        child:Padding(
                          padding: EdgeInsets.only(left:50.0*width ),
                          child: Container(
                            child:Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                               Material(
                                elevation: 2.0,
                                shape: CircleBorder(),
                                clipBehavior: Clip.hardEdge,
                                color: Color(0xff018577),
                                child: Ink.image(
                                  image: AssetImage('images/doctor_log.jpg'),
                                  fit: BoxFit.cover,
                                  width: 70.0,
                                  height: 80.0,
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0*height),
                                child:Text("Pending",textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 0.5*height),
                                child:  Text("Meeting you\nhave pending",textDirection: TextDirection.ltr, textAlign: TextAlign.center,style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),),),

                            ],
                          ),
                        ),
                      ),
                    ),
                      Container(
                        child:Padding(
                            padding: EdgeInsets.only(left:50.0*width ),
                          child: Container(
                            child:Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Material(
                                  elevation: 2.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Color(0xff018577),
                                  child: Ink.image(
                                      image: AssetImage('images/doctor_log.jpg'),
                                      fit: BoxFit.cover,
                                      width: 70.0,
                                      height: 80.0,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => MyCart()));
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.0*height),
                                    child: Text("Cart",textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.5*height),
                                    child: Text("Appointments\nin your cart",textDirection: TextDirection.ltr, textAlign: TextAlign.center,style:
                                            TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
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
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0*height),
                      child: FlatButton(
                        color: Color(0xff018577),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical:5.0*width, horizontal: 140.0*height ),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text("LOGIN",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 20.0),),
                      ),
                    ),
                  ),
                ],
               ),
            ),
         ],
        ),
      ],
    ),
   );
  }
}

