import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundFileNumber) {
    final player = AudioCache();
    player.play('note$soundFileNumber.wav');
  }

  Expanded songKey({Color color, int soundFile}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundFile);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              songKey(color: Colors.red, soundFile: 1),
              songKey(color: Colors.deepPurple, soundFile: 2),
              songKey(color: Colors.amber, soundFile: 3),
              songKey(color: Colors.deepOrange, soundFile: 4),
              songKey(color: Colors.cyan, soundFile: 5),
              songKey(color: Colors.brown, soundFile: 6),
              songKey(color: Colors.blue, soundFile: 7),
            ],
          ),
        ),
      ),
    );
  }
}
