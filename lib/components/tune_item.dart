
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/tunes_model.dart';


class Tune_item extends StatelessWidget{

  final TunesModel tune;

  const Tune_item({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        child: Center(child:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){tune.playSound();
                  }
                  ,child: Text(tune.text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))
              ,IconButton(onPressed: (){
                tune.stopSound();

              }, icon: Icon(Icons.stop,size: 40,))],),
        )
        ),
        color: tune.color,),
    );
  }

}