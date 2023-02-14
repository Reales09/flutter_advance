import 'package:flutter/material.dart';
import 'package:prueba/Widgets/button_green.dart';
import 'package:prueba/Widgets/gradient_back.dart';


class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return signInGoogleUI();
  }

  Widget signInGoogleUI(){

    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("",double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome \n this is your travel App",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
              ButtonGreen(text: "Login with Google", onPressed: (){

              },
                width: 300.0,
                height: 50.0,


              )
            ],

          )
        ],

      ) ,

    );
  }
}