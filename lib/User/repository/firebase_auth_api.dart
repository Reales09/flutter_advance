import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthAPI{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential> singIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;
    Future<UserCredential> user = _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: gSA?.idToken, accessToken: gSA?.accessToken));
    return user;

  }

  void signOut() async{
    await _auth.signOut();
    googleSignIn.signOut();
    print("Sesiones cerradas");

  }

}