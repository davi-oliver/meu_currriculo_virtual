import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSingIn {
  UserCredential? _user;

  Future singIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  //   final GoogleSignIn _googleSignIn = GoogleSignIn(
  //     scopes: ['email'],
  //   );
  //   final FirebaseAuth _auth = FirebaseAuth.instance;

  //   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser!.authentication;

  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   final UserCredential user = await _auth.signInWithCredential(credential);
  //   print("signed in " + user.user!.uid);
  //   //print("signed in " + user.user!.displayName);

  //   if (user == null) {
  //     print('User:: ${user.user!.displayName}');
  //     print('User:: ${user.user!.email}');
  //     print('User:: ${user.user!.uid}');
  //   } else {
  //     print('User:: ${user.user!.displayName}');
  //     print('User:: ${user.user!.email}');
  //     print('User:: ${user.user!.uid}');
  //   }
  // }
}
