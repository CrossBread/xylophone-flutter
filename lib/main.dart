import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(flex: 14, color: Colors.red, number: 1),
              buildKey(flex: 12, color: Colors.orange, number: 2),
              buildKey(flex: 10, color: Colors.yellow, number: 3),
              buildKey(flex: 9, color: Colors.green, number: 4),
              buildKey(flex: 8, color: Colors.teal, number: 5),
              buildKey(flex: 7, color: Colors.blue, number: 6),
              buildKey(flex: 6, color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({Color color, int number, int flex}) {
    return Expanded(
      flex: flex,
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
