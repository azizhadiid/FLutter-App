import 'package:flutter/material.dart';
import 'package:flutter_app/service/widget_support.dart';
import 'package:lottie/lottie.dart';

class OnboardingState extends StatefulWidget {
  const OnboardingState({super.key});

  @override
  State<OnboardingState> createState() => _OnboardingStateState();
}

class _OnboardingStateState extends State<OnboardingState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Lottie.asset('lotties/Chef.json'),
            SizedBox(height: 20.0),
            Text(
              "The Fastest\nFood Delevery",
              textAlign: TextAlign.center,
              style: AppWidget.HeadLineTextFeildStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
