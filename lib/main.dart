import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int a) {
    final player = new AudioCache();
    player.play('note$a.wav');
  }

Expanded buildKey({Color color, int a})
  {
    return Expanded(
      child: FlatButton(
        onPressed: (){

          playSound(a);

        },
        child: Container(
          child: Text(
            'Click me To Play Sound',

          ),


        ),color: color,
      ),
    );
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(color: Colors.red, a: 1),
              buildKey(color: Colors.pink, a: 2),
              buildKey(color: Colors.yellowAccent, a: 3),
              buildKey(color: Colors.purple, a: 4),
              buildKey(color: Colors.purpleAccent, a: 5),
              buildKey(color: Colors.brown, a: 6),
              buildKey(color: Colors.blueAccent, a: 7)

            ],
          ),
        ),

      ),
    );
  }
}
