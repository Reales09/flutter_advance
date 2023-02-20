import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/Place/ui/widgets/title_input_location.dart';
import 'package:prueba/Widgets/gradient_back.dart';
import 'package:prueba/Widgets/text_input.dart';
import 'package:prueba/Widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {

  late File? image;

  AddPlaceScreen({
    this.image
});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();


    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: 300.0),
          Row(//AppBar
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(child: Container(
                width: screenWidth,
                child: Container(
                  padding: EdgeInsets.only(top:45, left: 20.0, right: 10.0),
                  child: TitleHeader(title: "Add a new Place"),
                ),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: [
                Container(//foto

                ),
                Container(//TextFiel title
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextInput(hintText: "Title", inputType: TextInputType.text,maxLines: 1, controller: _controllerTitlePlace),
                ),
                TextInput
                  (hintText: "Description",
                    inputType: TextInputType.multiline,
                    maxLines: 4,
                    controller: _controllerDescriptionPlace
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(hintText: "Add Location",
                      iconData: Icons.location_on_outlined),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
