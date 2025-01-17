import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playAudio(filename){
    final player = AudioPlayer();
    player.play(AssetSource(filename));
  }

  Widget buildKey({Color color = Colors.black , String audioFile = "note1"}){
    return Expanded(
      child: InkWell(
          child: Container(
            color: color,
          ),
          onTap: (){
            // playAudio("$audioFile.wav");
            final player = AudioPlayer();
            player.play(AssetSource("$audioFile.wav"));
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color : Colors.red, audioFile : "note1"),
              buildKey(color : Colors.orange, audioFile : "note2"),
              buildKey(color : Colors.yellow, audioFile : "note3"),
              buildKey(color : Colors.green, audioFile : "note4"),
              buildKey(color : Colors.teal, audioFile : "note5"),
              buildKey(color : Colors.blue, audioFile : "note6"),
              buildKey(color : Colors.purple, audioFile : "note7"),
            ],
          ),
        ),
      ),
    );
  }
}
