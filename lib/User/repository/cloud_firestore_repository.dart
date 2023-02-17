import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prueba/User/model/UserModel.dart';
import 'package:prueba/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel user) => _cloudFirestoreAPI.updateUserData(user);
}