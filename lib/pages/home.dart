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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Untuk Menampilkan Nama dan Foto
              Row(
                children: [
                  SizedBox(width: 20.0),
                  Image.asset(
                    "assets/img/recycle_app/wave.png",
                    height: 40.0,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Hello, ",
                      style: AppWidget.healineTextStytle(26.0),
                    ),
                  ),
                  Text("Sazs", style: AppWidget.greenTextStytle(26.0)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
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
              SizedBox(height: 30.0),
              // Gambar Home
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/img/recycle_app/home.png"),
                ),
              ),

              // Categories Text
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Categories",
                  style: AppWidget.healineTextStytle(26.0),
                ),
              ),

              SizedBox(height: 20.0),
              // Listview Horizontal Categories
              Container(
                padding: EdgeInsets.only(left: 20.0),
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Kategori 1
                    Column(
                      children: [
                        // Gambar Kategori 1
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF7F2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFAAF0D1),
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "assets/img/recycle_app/plastic.png",
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Plastic",
                          style: AppWidget.normalTextStytle(16.0),
                        ),
                      ],
                    ),

                    // Kategori 2
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        // Gambar Kategori 1
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF7F2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFAAF0D1),
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "assets/img/recycle_app/paper.png",
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text("Paper", style: AppWidget.normalTextStytle(16.0)),
                      ],
                    ),

                    // Kategori 3
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        // Gambar Kategori 1
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF7F2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFAAF0D1),
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "assets/img/recycle_app/battery.png",
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Battery",
                          style: AppWidget.normalTextStytle(16.0),
                        ),
                      ],
                    ),

                    // Kategori 4
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        // Gambar Kategori 1
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF7F2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFAAF0D1),
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "assets/img/recycle_app/glass.png",
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text("Glass", style: AppWidget.normalTextStytle(16.0)),
                      ],
                    ),
                  ],
                ),
              ),

              // Panding Request Text
              SizedBox(height: 10.0),
              // Pending Request Text
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Panding Request",
                  style: AppWidget.healineTextStytle(22.0),
                ),
              ),

              SizedBox(height: 15.0),
              // Card Panding Request
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black45, width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "Main market, New York",
                          style: AppWidget.normalTextStytle(18.0),
                        ),
                      ],
                    ),
                    Divider(),
                    Image.asset(
                      "assets/img/recycle_app/chips.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),

                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.layers, color: Colors.green, size: 30.0),
                        SizedBox(width: 10.0),
                        Text("3", style: AppWidget.normalTextStytle(24.0)),
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),

              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
