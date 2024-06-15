import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/model.dart';
class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  List<Model> color=[
    Model(ENname: "black",JBname: "Burakku",Image: 'assets/images/colors/color_black.png',sound: 'sounds/colors/black.wav'),
    Model(ENname: "green",JBname: "Midori",Image: 'assets/images/colors/color_green.png',sound: 'sounds/colors/green.wav'),
    Model(ENname: "brown",JBname: "Chairo",Image: 'assets/images/colors/color_brown.png',sound: 'sounds/colors/brown.wav'),
    Model(ENname: "gray",JBname: "Gurē",Image: 'assets/images/colors/color_gray.png',sound: 'sounds/colors/gray.wav'),
    Model(ENname: "red",JBname: "Aka",Image: 'assets/images/colors/color_red.png',sound: 'sounds/colors/red.wav'),
    Model(ENname: "white",JBname: "Shiro",Image: 'assets/images/colors/color_white.png',sound: 'sounds/colors/white.wav'),
    Model(ENname: "yellow",JBname: "Kiiro",Image: 'assets/images/colors/yellow.png',sound: 'sounds/colors/yellow.wav'),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Colors"),
      ),
      body: ListView.builder(
        physics:BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: color.length,
        itemBuilder:(context,num){
          return Item(object:  color[num],pageColor: Color(0xff7e3fa3),);
        } ,
      ),
    );
  }
}

