import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded xylophoneKey(int soundNumber, Color color) {
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () => playSound(soundNumber),
        padding: EdgeInsets.all(0),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: Scaffold(
          body: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneKey(1, Colors.red),
              xylophoneKey(2, Colors.orange),
              xylophoneKey(3, Colors.yellow),
              xylophoneKey(4, Colors.green),
              xylophoneKey(5, Colors.teal),
              xylophoneKey(6, Colors.blue),
              xylophoneKey(7, Colors.purple),
            ],
          )),
        ),
      ),
    );
  }
}
