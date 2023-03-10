import 'package:flutter/material.dart';
import 'package:prueba/User/bloc/bloc_user.dart';
import 'package:prueba/User/model/UserModel.dart';
import 'package:prueba/Widgets/button_green.dart';
import 'package:prueba/Widgets/gradient_back.dart';
import 'package:prueba/User/bloc/bloc_user.dart' as User_Model;
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prueba/platzi_trips_cupertino.dart';


class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  bool logueado = false;
  late UserBloc userBloc;
  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;

    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
       stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
         //snapshot - data - Objeto User
         if(!snapshot.hasData || snapshot.hasError ){

           return signInGoogleUI();
         }else{

           return PlatziTripsCupertino();
         }
      },
    );
  }

  Widget signInGoogleUI(){
    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Container(
                width: screenWidth,
              child:
              Text("Welcome \n this is your travel App",
                  style: TextStyle(
                      fontSize: 37.0,
                      fontFamily: "Lato",
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
              ),

              ButtonGreen(text: "Login with Google",
                onPressed: (){
                if(logueado == false){
                  userBloc.signIn().then((UserCredential user){
                    userBloc.updateUserData(UserModel(uid: user.user?.uid, name: user.user?.displayName??'', email: user.user?.email??'', photoURL: user.user?.photoURL??''));
                  });
                  logueado = true;

                }else{
                  userBloc.singOut();
                  logueado = false;
                }
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