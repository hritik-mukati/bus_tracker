import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apointments extends StatefulWidget {
  @override
  _ApointmentsState createState() => _ApointmentsState();
}

class _ApointmentsState extends State<Apointments> {
  List appointment=[];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    return Scaffold(
        appBar: AppBar(
          title: Text("Appointments",textDirection: TextDirection.ltr,),
          elevation: 0.0,
        ),
        body:Stack(
          children: <Widget>[
            Container(
              color: Color(0xff018577),
            ),
//            Text("Any Package or Service you book are shown in your Cart",textAlign: TextAlign.center,style: TextStyle( fontSize: 20.0 ,color: Colors.white),),
            Container(
              margin: EdgeInsets.only(top: 100*height,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:new BorderRadius.only(
                  topLeft: const Radius.circular(70),
                  topRight: const Radius.circular(70),
                ),
              ),
              width: width*360,
              height: MediaQuery.of(context).size.height,

              child: appointment.length!=0 ?
              new Container(
                margin:EdgeInsets.only(top: 60*height),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (BuildContext context , int index){
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top:5,left: 10*width),
                                        child:Text("package name :",style:new TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:10.0*height,left: 10*width),
                                        child: Text("Price : ",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0*width),
                                        child: Text("Demo Package",style: new TextStyle(fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.0*height,left: 20*width),
                                        child: Text("Demo Price",style:new TextStyle(fontSize: 16.0,),),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ):new Container(
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120*width,vertical: 100*height),
                      child: Container(
                        child:Center(
                          child: Image.asset("images/apointment.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:1*height),
                      child: Container(
                        child: Text("No Apointments!",style: TextStyle(fontSize: 25.0),),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
    );
  }
}
