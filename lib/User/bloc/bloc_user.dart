import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:prueba/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  //Casos uso
  //1. SignIn a la apliacion Google


    Future<OAuthCredential> signIn(){
      return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}