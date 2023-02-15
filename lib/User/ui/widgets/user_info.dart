import 'package:flutter/material.dart';
import 'package:prueba/User/model/UserModel.dart';


class UserInfo extends StatelessWidget {

  UserModel userModel;

  UserInfo(@required this.userModel);

  @override
  Widget build(BuildContext context) {

    final userPhoto = Container(
      width: 90.0,
      height: 90.0,
      margin: EdgeInsets.only(
          right: 20.0
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              // image: AssetImage(userModel.photoURL)
            image: NetworkImage(userModel.photoURL)
          )
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                bottom: 5.0
            ),
            child: Text(
                userModel.name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lato',
                )
            )
        ),
        Text(
            userModel.email,
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white30,
                fontFamily: 'Lato'
            )
        ),
      ],
    );

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 0.0
      ),
      child: Row(
        children: <Widget>[
          userPhoto,
          userInfo
        ],
      ),
    );
  }

}