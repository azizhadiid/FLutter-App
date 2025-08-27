import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/services/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/img/recycle_app/login.png",
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20.0),
            Image.asset(
              "assets/img/recycle_app/recycle1.png",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              "Reduce. Reuse. Recycle.",
              style: AppWidget.healineTextStytle(25.0),
            ),
            Text("Repeat!", style: AppWidget.greenTextStytle(32.0)),
            SizedBox(height: 30.0),
            Text(
              "Every item you recycle\nmakes a  difference!",
              style: AppWidget.normalTextStytle(20.0),
              textAlign: TextAlign.center,
            ),
            Text("Get Started!", style: AppWidget.greenTextStytle(24.0)),

            // Tombol
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                AuthMethods().signInWithGoogle(context);
              },
              child: Material(
                color: Colors.transparent, // biar bayangannya kelihatan
                child: Container(
                  height: 90,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // warna bayangan
                        blurRadius: 10, // seberapa blur
                        offset: Offset(0, 5), // arah bayangan (x, y)
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image.asset(
                          "assets/img/recycle_app/google.png",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Sign in with Google",
                        style: AppWidget.whiteTextStytle(25.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
