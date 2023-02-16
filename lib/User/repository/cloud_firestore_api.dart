import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prueba/User/model/UserModel.dart';

class CloudFirestoreAPI{
  final String USERS = "user";
  final String PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> updateUserData(UserModel user) async{
    DocumentReference ref = _db.collection(USERS).doc(user.uid);
    return ref.set({
      'uid': user.uid,
      'name': user.name,
      'email' : user.email,
      'photoURL' : user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePLaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));

  }
}