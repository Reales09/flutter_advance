import 'package:flutter/material.dart';
import 'package:prueba/Widgets/button_green.dart';
import 'package:prueba/Widgets/gradient_back.dart';
import 'package:prueba/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of(context);
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
                userBloc.signIn().then((OAuthCredential user) => print("El usuario es ${user.signInMethod}"));
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