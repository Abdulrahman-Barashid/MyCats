import 'package:flutter/material.dart';
import 'package:my_cat/Widgets/cat_card.dart';
import 'package:my_cat/main.dart';

class catHomeScreen extends StatelessWidget{
  const catHomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cats', style: TextStyle(color: Colors.white, fontFamily: 'Times New Roman')),
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Colors.white),
           )],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: cats.length,
              itemBuilder: (context,index){
                final cat = cats[index];
                return CatCard(cat: cat);
              },
        ),
      ),
    );
  }
}