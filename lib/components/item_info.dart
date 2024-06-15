import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/model.dart';
class ItemInfo extends StatelessWidget {
  ItemInfo({required this.data});
  Model data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Expanded(
          flex: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(data.JBname,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(data.ENname,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),),
              ],
            ),
          ),
        ),
        Spacer(flex:1,),
        Padding(

          padding: const EdgeInsets.only(right: 16.0),
          child:IconButton(
            onPressed: ()
            {
              final player = AudioPlayer();
              player.play(AssetSource(data.sound));
            },
            icon:Icon(Icons.play_arrow,
              color: Colors.white,),),

        ),
      ],
    );
  }
}
