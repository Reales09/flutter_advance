import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Place {
  late String id;
  String name;
  String description;
  String urlImage;
  int? likes;
  User? userOwner;

  Place(
  {
    required  this.name,
    required this.description,
    required this.urlImage,
    this.likes,
    this.userOwner
}

);
}