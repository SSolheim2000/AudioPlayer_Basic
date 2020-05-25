import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

class Blank extends StatelessWidget {
  static AudioPlayer advancedPlayer;
  static AudioCache audioCache;
  static String vTitle = 'My First App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Blank.vTitle),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Blank.advancedPlayer = new AudioPlayer();
              Blank.audioCache = new AudioCache(fixedPlayer: Blank.advancedPlayer);
              Blank.audioCache.play('endtest.wav');
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  //myAudio();
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,home:  Blank()));

}
