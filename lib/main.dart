import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Expanded noteButton(String sound, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            noteButton('note1.wav', Colors.red),
            noteButton('note2.wav', Colors.orange),
            noteButton('note3.wav', Colors.yellow),
            noteButton('note4.wav', Colors.green),
            noteButton('note5.wav', Colors.blue),
            noteButton('note6.wav', Colors.indigo),
            noteButton('note7.wav', Colors.cyan),
          ],
        ),
      ),
    );
  }
}
