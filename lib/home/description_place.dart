import 'package:flutter/material.dart';
import "../components/button_purple.dart";

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace({
    Key? key, 
    required this.namePlace,
    required this.stars,
    required this.descriptionPlace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ), 
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ), 
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: const EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ), 
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 20.0, 
        left: 20.0,
        right: 20.0
      ), 
      child: Text(
        descriptionPlace, 
        style: const TextStyle(
          fontSize: 16.0, 
          fontWeight: FontWeight.bold, 
          color: Color(0xFF56575a)
        ),
      ),
    );
    
    
    /*Container(
      color: Colors.amber,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10.0, 
        left: 20.0,
        right: 20.0
      ), 
      
    );*/

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0, 
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ), 
        Row(
          children: [
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        )
        
      ],
    );


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description, 
        const ButtonPurple()
      ]
    ); 

  }
}