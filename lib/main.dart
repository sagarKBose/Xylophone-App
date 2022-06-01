import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buttonDesign(btnColor, musicNumber) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: btnColor,
        ),
        onTap: () {
          final player = AudioCache();
          player.play('note$musicNumber.wav');
        },
        enableFeedback: false,
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
            children: [
              buttonDesign(Colors.red, 1),
              buttonDesign(Colors.orange, 2),
              buttonDesign(Colors.yellow, 3),
              buttonDesign(Colors.green, 4),
              buttonDesign(Colors.teal, 5),
              buttonDesign(Colors.blue, 6),
              buttonDesign(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
