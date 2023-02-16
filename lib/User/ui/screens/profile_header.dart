import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:prueba/User/bloc/bloc_user.dart';
import 'package:prueba/User/model/UserModel.dart';
import '../widgets/user_info.dart';
import '../widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
  late UserModel userModel;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapsShot){
        switch (snapsShot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapsShot);
          default:
            return new CircularProgressIndicator();
        }

      },
    );

    /*
    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo('assets/img/ann.jpg', 'Anahí Salgado','anahi@platzi.com'),
          ButtonsBar()
        ],
      ),
    );
    */

  }

   showProfileData(AsyncSnapshot snapsShot){

    print(snapsShot.data);
    if(!snapsShot.hasData || snapsShot.hasError){
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text("No se pudo cargar la inoformación, Haz login")
            ]
        ),
      );
      print("No logueado");
    }else{
      print("Logueado");
      print(snapsShot.data);
      userModel = UserModel(name: snapsShot.data.displayName, email: snapsShot.data.email, photoURL: snapsShot.data.photoURL);
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0
        ),
      );

      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                title
              ],
            ),
            UserInfo(userModel),
            ButtonsBar()
          ],
        ),
      );
      print("Logueado");
    }
  }

}