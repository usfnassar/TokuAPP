import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/model.dart';
class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  List<Model> family=[
    Model(ENname: "father",JBname: "Chichioya",Image: 'assets/images/family_members/family_father.png',sound: 'sounds/family_members/father.wav'),
    Model(ENname: "mother",JBname: "hahaoya",Image: 'assets/images/family_members/family_mother.png',sound: 'sounds/family_members/mother.wav'),
    Model(ENname: "son",JBname: "musuko",Image: 'assets/images/family_members/family_son.png',sound: 'sounds/family_members/son.wav'),
    Model(ENname: "daughter",JBname: "musume",Image: 'assets/images/family_members/family_daughter.png',sound: 'sounds/family_members/daughter.wav'),
    Model(ENname: "older bother",JBname: "Nīsan",Image: 'assets/images/family_members/family_older_brother.png',sound: 'sounds/family_members/older_bother.wav'),
    Model(ENname: "older sister",JBname: "Ane",Image: 'assets/images/family_members/family_older_sister.png',sound: 'sounds/family_members/older_sister.wav'),
    Model(ENname: "younger brother",JBname: "Otōto",Image: 'assets/images/family_members/family_younger_brother.png',sound: 'sounds/family_members/younger_brohter.wav'),
    Model(ENname: "grand father",JBname: "Ojīsan",Image: 'assets/images/family_members/family_grandfather.png',sound: 'sounds/family_members/grand_father.wav'),
    Model(ENname: "grand mother",JBname: "Sobo",Image: 'assets/images/family_members/family_grandmother.png',sound: 'sounds/family_members/grand_mother.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Family Members"),
      ),
      body: ListView.builder(
        physics:BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: family.length,
        itemBuilder:(context,num){
          return Item(object: family[num],pageColor: Color(0xff538033),);
        } ,
      ),
    );
  }
}

