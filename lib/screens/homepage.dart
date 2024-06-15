import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/screens/color_page.dart';
import 'package:tokuapp/screens/family_member_page.dart';
import 'package:tokuapp/screens/numberspage.dart';
import 'package:tokuapp/screens/phrases_page.dart';
import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("TOKU",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(

        children:
        [
          SizedBox(height: 50,),
          Categores(text: "Numbers",
            color:Color(0xffEF9235),
            onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)
                  {
                    return NumbersPage();
                  })
              );
            },
            icon: CupertinoIcons.number_circle,


          ),
          SizedBox(height: 50,),
          Categores(text: "Family Members", color: Color(0xff538033),
              onTap: ()
              {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)
                        {
                          return FamilyPage();
                        },


                    )
                );
              },
            icon:Icons.family_restroom,
              ),
          SizedBox(height: 50,),
          Categores(text: "Colors", color: Color(0xff7e3fa3),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)
                        {
                          return ColorPage();
                        }
            ));
          },
            icon:Icons.color_lens,
          ),
          SizedBox(height: 50,),
          Categores(text: "Phrases", color: Color(0xff48a5cc),
          onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)
                      {
                        return PhrasesPage();
                      }
              )
              );
            },
            icon: CupertinoIcons.text_bubble_fill,
          ),
        ],
      ),


    );
  }
}
// Widget Category({required String text,required Color color}) {
//   return Container(
//     alignment: Alignment.centerLeft,
//     padding: EdgeInsets.only(left: 17.0),
//     width: double.infinity,
//     height: 65.0,
//     color: color,
//     child: Text(text,
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 18.0,
//
//       ),
//     ),
//   );
// }

