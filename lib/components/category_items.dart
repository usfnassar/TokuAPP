import 'package:flutter/material.dart';
class Categores extends StatelessWidget {
String? text;
Color? color;
IconData icon;
Function()? onTap;
Categores({this.text,this.color,this.onTap,required this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 17.0),
        width: double.infinity,
        height: 65.0,
        color: color,
        child: Row(
          children: [
            Expanded(
              child: Text(text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
              
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(icon),
            ),

          ],
        ),
      ),
    );
  }
}
