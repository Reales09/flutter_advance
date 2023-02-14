import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthAPI{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<OAuthCredential> singIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;

    // Create a new credential
    final user = GoogleAuthProvider.credential(
      accessToken: gSA?.accessToken,
      idToken: gSA?.idToken,
    );

    return user;

  }
}