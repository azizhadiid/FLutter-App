import 'package:flutter/material.dart';
import 'package:flutter_app/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Column(
          children: [
            // Header Untuk Menampilkan Nama dan Foto
            Row(
              children: [
                Text("Hello, ", style: AppWidget.healineTextStytle(26.0)),
                Text("Aziz", style: AppWidget.greenTextStytle(26.0)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      "assets/img/recycle_app/boy.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
