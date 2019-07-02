import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  final player = AudioCache();
  void playSound(int fileNum) {
    player.play('note$fileNum.wav');
  }

  Expanded buildKey({Color color, int keyNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(keyNum);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keyNum: 1),
              buildKey(color: Colors.orange, keyNum: 2),
              buildKey(color: Colors.yellow, keyNum: 3),
              buildKey(color: Colors.green, keyNum: 4),
              buildKey(color: Colors.blue, keyNum: 5),
              buildKey(color: Colors.indigo, keyNum: 6),
              buildKey(color: Colors.purple, keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
