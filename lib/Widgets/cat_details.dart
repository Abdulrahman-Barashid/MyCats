import 'package:flutter/material.dart';
import 'package:my_cat/model/cat.dart';

/// This widget should recieve a cat and show all cat details 
class CatDetails extends StatefulWidget {
  final Cat cat;
  const CatDetails({
    super.key, required this.cat
  });

  @override
  State<CatDetails> createState() => _CatDetailsState();
}

class _CatDetailsState extends State<CatDetails> {

bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // cat image 
        Image.network(widget.cat.imageLink),
        // Cat name
        Text (
          widget.cat.name,
           style: TextStyle(
            fontSize: 28, 
            fontWeight: FontWeight.bold, 
            fontStyle: FontStyle.italic,
            color: isNameColored ? Colors.indigoAccent : Colors.black),
        ),
        // Cat info
        Text('Origin: ${widget.cat.origin}'),
        Text('Max Weight: ${widget.cat.maxWeight}'),
        Text('Min Weight: ${widget.cat.minWeight}'),
        Text('Length: ${widget.cat.length}'),
        ElevatedButton(onPressed: (){
          setState(() {
            isNameColored = !isNameColored;
          });
        }, child: Text('Change Name color'))
      ]
    );
  }
}