import 'package:flutter/material.dart';
//import 'package:food/screens/food-details/food-details.dart';
import 'package:food/screens/home/home.dart';
import 'package:food/themes/theme-light.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: themeLight,
      
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Home(),
      ),
    );
  }
}
