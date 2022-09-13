import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class SigInGoogle {
  late BuildContext _context;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  SigInGoogle(this._context);

  Future<void> signIn() async {
    try {
      // final GoogleSignIn _googleSignIn = GoogleSignIn(
      //   scopes: ['email'],
      // );

      //      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      //     final GoogleSignInAuthentication googleAuth =
      //         await googleUser!.authentication;

      //     final AuthCredential credential = GoogleAuthProvider.credential(
      //       accessToken: googleAuth.accessToken,
      //       idToken: googleAuth.idToken,
      //     );
      //     final UserCredential user = await _auth.signInWithCredential(credential);
      //     print("signed in " + user.user!.uid);
      //     //print("signed in " + user.user!.displayName);

      //     final notesReference = await FirebaseDatabase.instance
      //         .reference()
      //         .child('userProfile/${user.user!.uid}');

      //     await notesReference.once().then((DataSnapshot snapshot) async {
      //       //garante que o nome só é atualizado pelo que está no email se ele estiver vazio, senao deve mantter sempre o que já estava no firebase
      //       snapshot.value == null || snapshot.value == ""
      //           ? await notesReference.update(
      //               {'nome': user.user!.displayName, 'email': user.user!.email})
      //           : await notesReference.update({
      //               'nome': snapshot.value['nome'] == null
      //                   ? user.user!.displayName
      //                   : snapshot.value['nome'],
      //               'email': user.user!.email
      //             });

      //       if (snapshot.value == null || snapshot.value == "") {
      //         _globalsUser.atualizaVars(user.user!.uid, user.user!.displayName,
      //             user.user!.photoURL, user.user!.email, '', '', '', false);
      //       } else {
      //         if (snapshot.value['upCadastro'] == 1) {
      //           _globalsUser.atualizaVars(
      //               user.user!.uid,
      //               snapshot.value['nome'],
      //               user.user!.photoURL,
      //               user.user!.email,
      //               snapshot.value['cidade'],
      //               snapshot.value['estado'],
      //               '',
      //               false);
      //         } else {
      //           _globalsUser.atualizaVars(user.user!.uid, user.user!.displayName,
      //               user.user!.photoURL, user.user!.email, '', '', '', false);
      //         }
      //       }
      //     });

      //     return user.user!;
    } on Exception catch (e) {
      // TODO
    }
  }
}
