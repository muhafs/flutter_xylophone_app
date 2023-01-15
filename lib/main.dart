import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XyloPhoneApp());

class XyloPhoneApp extends StatelessWidget {
  const XyloPhoneApp({super.key});

  void playSound(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }

  Expanded buildKey({required int sound, required Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(0.0),
          ),
        ),
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                sound: 1,
                color: Colors.red,
              ),
              buildKey(
                sound: 2,
                color: Colors.orange,
              ),
              buildKey(
                sound: 3,
                color: Colors.yellow,
              ),
              buildKey(
                sound: 4,
                color: Colors.green,
              ),
              buildKey(
                sound: 5,
                color: Colors.teal,
              ),
              buildKey(
                sound: 6,
                color: Colors.blue,
              ),
              buildKey(
                sound: 7,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
