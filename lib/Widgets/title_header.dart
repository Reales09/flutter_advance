import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {

  final String title;

  TitleHeader({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
                fontFamily: "Lato",
              fontWeight: FontWeight.bold
            ),
    );

    
  }
}
