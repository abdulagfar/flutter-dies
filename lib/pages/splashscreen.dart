import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';


class Splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>_navigateToHome());
  }
  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder:(BuildContext)=>dicee()
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Image.asset('images/icon.png',
              height: 150.0,
                  width: 150.0,),
            ),

            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'From STRYT',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(211, 211, 211, 0.7),
                    decorationThickness: 20.0,

                  ),
                ),


                  ),
                ),

            LinearProgressIndicator(),


          ],

    ),


    );
  }
}


