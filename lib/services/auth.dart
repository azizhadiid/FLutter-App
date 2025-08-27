import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/learn/pages/home.dart';
import 'package:flutter_app/services/database.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final firebaseAuth = FirebaseAuth.instance;

      // ✅ pakai constructor normal, bukan .standard
      final googleSignIn = GoogleSignIn(scopes: ['email']);

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
        Map<String, dynamic> userInfoMap = {
          "email": userDetails.email,
          "name": userDetails.displayName,
          "imgUrl": userDetails.photoURL,
          "id": userDetails.uid,
        };

        await DatabaseMethods().addUserInfo(userInfoMap, userDetails.uid);
      }

      return result;
    } catch (e) {
      debugPrint("Error signInWithGoogle: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    final firebaseAuth = FirebaseAuth.instance;
    final googleSignIn = GoogleSignIn();

    await googleSignIn.signOut();
    await firebaseAuth.signOut();
  }
}
