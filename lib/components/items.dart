import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/components/item_info.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/model.dart';

class Item extends StatelessWidget {
   Item({required this.object,required this.pageColor });
  Model object;
  Color pageColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: pageColor,
      child: Row(
        children: [
          Container(
              color: Color(0xfffff4dd),
              child: Image.asset(object.Image!)),
          Expanded(child: ItemInfo(data: object)),

        ],
      ),
    );
  }
}






