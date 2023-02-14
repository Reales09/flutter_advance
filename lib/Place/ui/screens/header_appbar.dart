import 'package:flutter/material.dart';
import '../../../Widgets/gradient_back.dart';
import '../widgets/card_image_list.dart';


class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido",250.0),
        CardImageList()
      ],
    );
  }

}