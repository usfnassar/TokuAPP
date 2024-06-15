import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/model.dart';
class NumbersPage extends StatelessWidget {
   NumbersPage({super.key});
   List<Model> numbers=[
     Model(ENname: "one",JBname: "ichi",Image: 'assets/images/numbers/number_one.png',sound: 'sounds/numbers/number_one_sound.mp3'),
     Model(ENname: "two",JBname: "ni",Image: 'assets/images/numbers/number_two.png',sound: 'sounds/numbers/number_two_sound.mp3'),
     Model(ENname: "three",JBname: "san",Image: 'assets/images/numbers/number_three.png',sound: 'sounds/numbers/number_three_sound.mp3'),
     Model(ENname: "four",JBname: "shi",Image: 'assets/images/numbers/number_four.png',sound: 'sounds/numbers/number_four_sound.mp3'),
     Model(ENname: "five",JBname: "go",Image: 'assets/images/numbers/number_five.png',sound: 'sounds/numbers/number_five_sound.mp3'),
     Model(ENname: "six",JBname: "roku",Image: 'assets/images/numbers/number_six.png',sound: 'sounds/numbers/number_six_sound.mp3'),
     Model(ENname: "seven",JBname: "shichi",Image: 'assets/images/numbers/number_seven.png',sound: 'sounds/numbers/number_seven_sound.mp3'),
     Model(ENname: "eight",JBname: "hachi",Image: 'assets/images/numbers/number_eight.png',sound: 'sounds/numbers/number_eight_sound.mp3'),
     Model(ENname: "nine",JBname: "kyuu",Image: 'assets/images/numbers/number_nine.png',sound: 'sounds/numbers/number_nine_sound.mp3'),
     Model(ENname: "ten",JBname: "juu",Image: 'assets/images/numbers/number_ten.png',sound: 'sounds/numbers/number_ten_sound.mp3'),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
        physics:BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics()),
        itemCount: numbers.length,
        itemBuilder:(context,num){
          return Item(object:  numbers[num],pageColor: Color(0xffEF9235),);
        } ,
      ),
    );
  }
}

