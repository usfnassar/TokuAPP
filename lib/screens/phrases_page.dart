import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/components/phrases_item.dart';
import 'package:tokuapp/models/model.dart';
class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<Model> Phrases=[
    Model(ENname: "i love programming",JBname: "Watashi wa puroguramingu ga daisukidesu",sound: 'sounds/phrases/i_love_programming.wav'),
    Model(ENname: "programming is easy",JBname: "Puroguramingu wa kantandesu",sound: 'sounds/phrases/programming_is_easy.wav'),
    Model(ENname: "where are you going",JBname: "Doko ni iku no",sound: 'sounds/phrases/where_are_you_going.wav'),
    Model(ENname: "what is your name ?",JBname: "Namae wa nandesu ka",sound: 'sounds/phrases/what_is_your_name.wav'),
    Model(ENname: "i love anime",JBname: "Watashi wa anime ga daisukidesu",sound: 'sounds/phrases/i_love_anime.wav'),
    Model(ENname: "how are you feeling?",JBname: "Go kibun wa ikagadesu ka",sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Model(ENname: "are you coming?",JBname: "Kimasu ka",sound: 'sounds/phrases/are_you_coming.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Phrases"),
      ),
      body: ListView.builder(
        physics:BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: Phrases.length,
        itemBuilder:(context,num){
          return PhrasesItem(object:  Phrases[num],pageColor: Color(0xff48a5cc),);
        } ,
      ),
    );
  }
}

