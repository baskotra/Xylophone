import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final player = AudioCache();

  void playSound(int note){
    player.play('note$note.wav');
  }

  Widget buildKey({Color color, int soundNumber}){
     return Expanded(
      child: FlatButton(
              onPressed: () {
                playSound(soundNumber);
              },
                color: color,
              
              ),
          );
          
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.red, soundNumber: 1),
          buildKey(color: Colors.yellow, soundNumber: 2),
          buildKey(color: Colors.cyan, soundNumber: 3),
          buildKey(color: Colors.green, soundNumber: 4),
          buildKey(color: Colors.pink, soundNumber: 5),
          buildKey(color: Colors.indigo, soundNumber: 6),
          buildKey(color: Colors.orange, soundNumber: 7),
        ],
      ),
    );
  }
}