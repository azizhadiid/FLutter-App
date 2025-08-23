import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle healineTextStytle(double size) {
    return TextStyle(
      color: Colors.black,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle normalTextStytle(double size) {
    return TextStyle(
      color: Colors.black,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle whiteTextStytle(double size) {
    return TextStyle(
      color: Colors.white,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle greenTextStytle(double size) {
    return TextStyle(
      color: Colors.green,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }
}
