import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  double width = 300.0;
  double height = 350.0;
  double left = 20.0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(pathImage: "assets/img/beach_palm.jpeg",width: width,height: height,left: left, iconData: Icons.favorite_border,onPressedFabICon: (){},),
          CardImageWithFabIcon(pathImage: "assets/img/mountain.jpeg", width: width,height: height,left: left,iconData: Icons.favorite_border,onPressedFabICon: (){}),
          CardImageWithFabIcon(pathImage: "assets/img/mountain_stars.jpeg",width: width,height: height,left: left,iconData: Icons.favorite_border,onPressedFabICon: (){}),
          CardImageWithFabIcon(pathImage: "assets/img/river.jpeg",width: width,height: height,left: left, iconData: Icons.favorite_border,onPressedFabICon: (){}),
          CardImageWithFabIcon(pathImage: "assets/img/sunset.jpeg",width: width,height: height,left: left, iconData: Icons.favorite_border,onPressedFabICon: (){}),
        ],
      ),
    );
  }

}