import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/learn/pages/home.dart';
import 'package:flutter_app/services/database.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  signInWithGoogle(BuildContext context) async {
    try {
      final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount = await googleSignIn
          .signIn();

      if (googleSignInAccount == null) {
        // User canceled the sign-in process
        return;
      }

      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken,
      );

      UserCredential result = await firebaseAuth.signInWithCredential(
        credential,
      );

      User? userDetails = result.user;

      if (userDetails != null) {
        Map<String, dynamic> userInfoMap = {
          "email": userDetails.email,
          "name": userDetails.displayName,
          "image": userDetails.photoURL,
          "Id": userDetails.uid,
        };

        // Add user info to database
        await DatabaseMethods().addUserInfo(userInfoMap, userDetails.uid);

        // Navigate to Home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        print("User details are null after sign-in.");
      }
    } catch (e) {
      print("Error during Google sign-in: $e");
      // You can also show a SnackBar or AlertDialog to the user here
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }
}
