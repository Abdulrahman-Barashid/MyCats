import 'package:flutter/material.dart';
import 'package:my_cat/Widgets/cat_details.dart';

import '../model/cat.dart';

class CatDeatilsScreen extends StatelessWidget {
  final Cat cat;
  const CatDeatilsScreen({super.key, required this.cat});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(cat.name, style: TextStyle(color: Colors.white, fontFamily: 'Times New Roman')),
      backgroundColor: Colors.indigoAccent,
       centerTitle: true, // Set this to true to center the title
        ),
      body: CatDetails(cat: cat,),
    );
  }
}
