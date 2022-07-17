import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int audionumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$audionumber.wav"),
    );
  }

  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(2);
                  },
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.pinkAccent),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(3);
                  },
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.tealAccent),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(4);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(5);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(6);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(7);
                  },
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.amberAccent),
                  child: const Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
