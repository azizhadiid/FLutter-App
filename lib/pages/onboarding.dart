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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Column(
            children: [
              Lottie.asset('lotties/Chef.json'),
              SizedBox(height: 20.0),
              Text(
                "The Fastest\nFood Delevery",
                textAlign: TextAlign.center,
                style: AppWidget.headLineTextFeildStyle(),
              ),
              SizedBox(height: 20.0),
              Text(
                "Makanan yang enak hanya ada di sini, lakukanlah pembelian segera!",
                textAlign: TextAlign.center,
                style: AppWidget.simpleTextFeildStyle(),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Color(0xff8c592a),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Ayo Mulai!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
