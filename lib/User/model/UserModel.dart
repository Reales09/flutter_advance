import 'package:flutter/material.dart';
import 'package:prueba/Place/model/place.dart';

class UserModel {

  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePLaces;

  UserModel(
      this.uid,
      this.myPlaces,
      this.myFavoritePLaces,
  {
    required this.name,
    required this.email,
    required this.photoURL,

  }


);
}