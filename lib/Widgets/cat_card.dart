import 'package:flutter/material.dart';
import 'package:my_cat/Screens/cat_details_screen.dart';
import 'package:my_cat/model/cat.dart';

///Widget for shows a card that shows the image and the name of the cat
class CatCard extends StatelessWidget {
  final Cat cat;


  const CatCard({
    super.key, required this.cat
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDeatilsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            // Cat image
            Expanded(
              child: Image.network(
                width: double.infinity, fit: BoxFit.cover, cat.imageLink),
            ),
            // Cat name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cat.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle
                  (fontSize: 20,
                  fontWeight: FontWeight.bold,
                   color: Colors.indigoAccent)),
              ),
          ],
        )),
    );
  }
}