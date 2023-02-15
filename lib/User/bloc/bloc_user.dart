import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:prueba/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  //Flujo de datos - Strreams
  // Stream - Firebase
  //Stream controller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;


  //Casos uso
  //1. SignIn a la apliacion Google
    Future<UserCredential> signIn(){
      return _auth_repository.signInFirebase();
  }

  singOut() {
      _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}