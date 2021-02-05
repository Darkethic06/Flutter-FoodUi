import 'package:flutter/material.dart';
import 'package:foodui/Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "TakeFood",
      theme: ThemeData(
        fontFamily: "SUFIDisplay"
      ),
      home: HomePage(),
    
    );
  }
}