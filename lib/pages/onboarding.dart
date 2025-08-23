import 'package:flutter/material.dart';
import 'package:flutter_app/services/widget_support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Isi Bagian Onboarding
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50.0),
            // Gambar
            Image.asset("assets/img/recycle_app/onboarding.png"),
            SizedBox(height: 20.0),
            // Judul
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recycle your waste products!",
                style: AppWidget.healineTextStytle(30.0),
              ),
            ),
            // Sub Judul
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Easy way to recycle your waste products",
                style: AppWidget.normalTextStytle(20.0),
              ),
            ),

            // Tombol Mulai
            SizedBox(height: 90.0),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: AppWidget.whiteTextStytle(24.0),
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
