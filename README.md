# AudioPlayer_Basic
Just the bare minimum to play Audio on Flutter.

# Setup your computer
If you haven't already setup your computer to use Flutter, I followed these instructions:

https://www.youtube.com/watch?v=GLSG_Wh_YWc

# Setup your pubspec.yaml file
Add this line of code right after the "dependencies:" section:
```ruby
  audioplayers: ^0.15.1
```  
Make sure it's before the "flutter:" section.
Then click the "Pub get" link in the upper right to download the AudioPlayers module.
You will also have to add the "assets: section:
```ruby
  assets:
    - assets/
```   

# Import the code and audio file
Either import the code into your project or copy and paste it into the "main.dart" file.
You'll need to create a folder called "assets" and place your audio file in that folder.


# Notes
There is only about 6 lines of code that you will need:
```ruby
  import 'package:audioplayers/audio_cache.dart';                                      // This is needed for AudioPlayer.
  import 'package:audioplayers/audioplayers.dart';                                     // This is needed for AudioPlayer.
  
  static AudioPlayer advancedPlayer = new AudioPlayer();                               // This is needed for AudioPlayer.
  static AudioCache audioCache= new AudioCache(fixedPlayer: advancedPlayer);           // This is needed for AudioPlayer.
  static AudioPlayer audioPlayer = AudioPlayer();                                      // This is needed for AudioPlayer.
  
  Blank.audioCache.play('test.wav');                                                   // This is needed for AudioPlayer.
```

You'll notice that my variables start with "static". This is so I can call the audioplayer from any location within my code.
The AudioPlayers is hardcoded to look for your files in a folder called "assets".
Filenames are Case Sensative.

