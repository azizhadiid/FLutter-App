import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  Future<UserCredential?> signInWithGoogle(BuildContext context) async {
    try {
      final firebaseAuth = FirebaseAuth.instance;

      // Gunakan named constructor versi terbaru
      final googleSignIn = GoogleSignIn.standard(scopes: ['email']);

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return null; // user batal login

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final result = await firebaseAuth.signInWithCredential(credential);

      final userDetails = result.user;
      if (userDetails != null) {
        final userInfoMap = {
          "email": userDetails.email,
          "name": userDetails.displayName,
          "image": userDetails.photoURL,
          "id": userDetails.uid,
        };
        // Gunakan userInfoMap sesuai kebutuhan...
      }
      return result;
    } catch (e) {
      debugPrint('Error signInWithGoogle: $e');
      return null;
    }
  }
}
