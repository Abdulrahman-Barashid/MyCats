import 'package:flutter/material.dart';
import 'package:my_cat/Data/all_cats.dart';
import 'package:my_cat/Screens/home_screen.dart';
import 'package:my_cat/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: catHomeScreen()
    );
  }
} 
       