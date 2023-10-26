import 'package:flutter/material.dart';
import 'package:tunesspp/screens/tune_screen.dart';

void main(){
  runApp(Tunes_app());
}

class Tunes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tune_class(),
    );
  }
}