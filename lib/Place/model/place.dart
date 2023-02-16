import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Place {
  late String id;
  String name;
  String description;
  String uriImage;
  int likes;
  User userOwner;

  Place(
    @required  this.name,
    @required this.description,
    @required this.uriImage,
    this.likes,
    @required this.userOwner
);
}