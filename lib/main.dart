import 'package:flutter/material.dart';
import 'package:tokuapp/screens/homepage.dart';

void main() {
  runApp( TokuApp());
}

class TokuApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),

    );
  }
}
