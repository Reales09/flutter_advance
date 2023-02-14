import 'package:firebase_auth/firebase_auth.dart';
import 'package:prueba/User/repository/firebase_auth_api.dart';

class AuthRepository{
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<OAuthCredential> signInFirebase() => _firebaseAuthAPI.singIn();

}