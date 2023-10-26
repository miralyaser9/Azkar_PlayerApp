import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';


class TunesModel {
  final Color color;
  final String sound;
  String text;


  TunesModel({required this.color,required this.sound,required this.text});
  final player = AudioPlayer();
  void playSound()
  {
    player.play(AssetSource(sound));
  }
  void stopSound() {
    player.stop();
  }
}