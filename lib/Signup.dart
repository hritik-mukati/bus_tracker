import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanatorium/Login.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height/780;
    final width= MediaQuery.of(context).size.width/360;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-50,
              ),
            Container(
              margin: EdgeInsets.only(top:(360.0)*height),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end:Alignment.bottomRight,
                    colors: [Colors.white,Color(0xffAAE166),],
                  )
              ),
              child:Center(
                child:Container(
                  child:Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 340*height),
                        child:  Text("Already Regiatered ",style: TextStyle(color: Colors.black,fontSize: 16),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2*height),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()),);
                          },
                          child: Text("Sign In",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
                        ),
                      ),
                     ],
                  ),
//              alignment: Alignment(1.0,1.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[Color(0xff018577),Color(0xff018577)],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 370*height,
              child: Container(
                margin: EdgeInsets.only(top: 130*height,left: 180*width),
                child: Text(" Sign Up ",style: TextStyle(fontSize: 50,color: Colors.white),),
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top:(240.0)*height),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                  ),
                  width: (320.0)*width,
                  height: (400.0)*height,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15.0*height,left: 20*width,right: 20*width),
                        child: Text("Let's get started",style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:20.0*height,left: 20.0*width,right: 20.0*width),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Enter Your Name ",
                          ),
                          onChanged: (input){
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:15.0*height,left: 20.0*width,right: 20.0*width),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.mail),
                            hintText: "Enter Your Email",
                          ),
                          onChanged: (input){
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:15.0*height,left: 20.0*width,right: 20.0*width),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            hintText: "Enter Password",
                          ),
                          obscureText: true,
                          onChanged: (input){
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:15.0*height,left: 20.0*width,right: 20.0*width),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            hintText: "Confirm Password",
                          ),
                          obscureText: true,
                          onChanged: (input){
                          },
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top:30.0*height),
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 100.0*width,vertical: 17.0*height),
                            color: Color(0xff018577),
                            child: Text('SIGN UP',style: TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.normal),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: (){
                            },
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(              //Logo image at TOP ..
              child: Positioned(
                  child:Container(
                    margin: EdgeInsets.only(top: 100*height,left: 60*width),
                    width: 110*width,
                    height: 110*height,
                    child:Logoimage(),
                  ),
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}

class Logoimage extends StatelessWidget{            //to show logo image.....
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage("images/logo-tr.png");
    Image image=Image(image: assetImage,);
    return Container(child: image,);
  }

}