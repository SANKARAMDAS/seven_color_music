import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumner){
    final player = AudioCache();
    player.play('note$soundNumner.wav');
  }

  Expanded bodyKey({Color color, int soundNumner}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumner);
        },
        child: Text('Click Me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bodyKey(color: Colors.red, soundNumner: 1),
              bodyKey(color: Colors.green, soundNumner: 2),
              bodyKey(color: Colors.blue, soundNumner: 3),
              bodyKey(color: Colors.purple, soundNumner: 4),
              bodyKey(color: Colors.orange, soundNumner: 5),
              bodyKey(color: Colors.grey, soundNumner: 6),
              bodyKey(color: Colors.indigo, soundNumner: 7),
            ],
          ),
        ),
      ),
    );
  }
}
