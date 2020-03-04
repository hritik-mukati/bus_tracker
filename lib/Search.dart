import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    var viewportConstraints;
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        elevation: 0.0,
      ),
      body:
      LayoutBuilder(
        builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          color: Color(0xff018577),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10.0*width,top: 20.0*height,right: 10.0*width),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(4.0),    //reduces the width of the search box..
                                      prefixIcon: Icon(Icons.search),
                                      hintText: "Search for Doctors, Clinics And Hospitals..",
                                      filled: true,
                                      fillColor: Colors.white),
                                  onTap: (){ },
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                color: Colors.white,
                                  child:Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:EdgeInsets.only(left: 45*width,bottom: 1),
                                            child:Column(
                                              children: <Widget>[
                                                Text("Services",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                                Padding(
                                                  padding:EdgeInsets.only(left:80*width),
                                                 child: CustomPaint(painter: Drawhorizontalline()),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:EdgeInsets.only(left: 45*width,bottom: 1),
                                            child:Column(
                                              children: <Widget>[
                                                Text("Specific Services",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                                Padding(
                                                  padding:EdgeInsets.only(left:25*width),
                                                  child: CustomPaint(painter: Drawhorizontalline()),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:EdgeInsets.only(left: 45*width,bottom: 1),
                                            child:Column(
                                              children: <Widget>[
                                                Text("Doctors",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                                Padding(
                                                  padding:EdgeInsets.only(left:80*width),
                                                  child: CustomPaint(painter: Drawhorizontalline()),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:EdgeInsets.only(left: 45*width,bottom: 1),
                                            child:Column(
                                              children: <Widget>[
                                                Text("Organisation",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                                Padding(
                                                  padding:EdgeInsets.only(left:60*width),
                                                  child: CustomPaint(painter: Drawhorizontalline()),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:EdgeInsets.only(left: 45*width,bottom: 1),
                                            child:Column(
                                              children: <Widget>[
                                                Text("Packages",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                                Padding(
                                                  padding:EdgeInsets.only(left:80*width),
                                                  child: CustomPaint(painter: Drawhorizontalline()),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          );
        },
      )
    );
  }
}



class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(90.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}