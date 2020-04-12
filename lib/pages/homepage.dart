

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
var rng = new Random();
int n=1;

class dicee extends StatefulWidget {
  @override
  _diceeState createState() => _diceeState();
}

class _diceeState extends State<dicee> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal[500],
      appBar: AppBar(centerTitle:true ,
      backgroundColor:Colors.teal[700] ,

      title: Text('Dice',style:TextStyle(
        color: Colors.white
      )),
      ),
      body: Container(

        child: Center(
          child: FlatButton(
            child: Image.asset('images/dice$n.png'),
            onPressed: (){
              final player=AudioCache();
              player.play('audio/sound.wav');
              setState(() {
                print("old value: $n");
                n=1+rng.nextInt(6);

                print("new value: $n");

              });
              print("tapped");

            },
          ),
        ),
      ),
    );
  }
}
