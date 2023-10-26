import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../components/tune_item.dart';
import '../models/tunes_model.dart';

class Tune_class extends StatelessWidget{
  Tune_class({super.key});

  List<TunesModel> tunesList =[

    TunesModel(color: Colors.lightGreenAccent, sound: "084-_up_by_muslem.mp3",text: "اذكار الصباح"),
    TunesModel(color: Colors.cyanAccent, sound: "esm3.com.65464.mp3",text: "اذكار المساء"),
    TunesModel(color: Colors.pink, sound: "esm3.com.151532.mp3",text: "دعاء قبل النوم"),
    TunesModel(color: Colors.deepPurple, sound: "esm3.com.65498.mp3",text: "دعاؤ الخروج من المنزل"),
    TunesModel(color: Colors.orange, sound: "esm3.com.65488.mp3",text: "اذكار بعد الصلاه"),
    // TunesModel(color: Colors.lightBlue, sound: "note6.wav",text: ""),
    // TunesModel(color: Colors.yellowAccent, sound: "note7.wav",text: ""),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text("Azkar",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
        ,)
      ,body: Column
      (children:

    tunesList.map((e) =>Tune_item(tune: e)).toList(),




    ),
    );
  }
/* List< Tune_item> getTune(){
    List< Tune_item> items=[];
    for(var elements in tuneColors ){
      items.add(Tune_item(color: elements));
    }
    return items;
  }*/

}