import 'package:flutter/material.dart';
import 'package:flutter_app/model/category_model.dart';
import 'package:flutter_app/service/category_data.dart';
import 'package:flutter_app/service/widget_support.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];

  String track = "0";

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo dan Teks
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "img/logo.png",
                        height: 40,
                        width: 60,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Order your favorite food!",
                        style: AppWidget.simpleTextFeildStyle(),
                      ),
                    ],
                  ),
                  // Gambar Profil
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "img/man.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.only(right: 20.00),
                      decoration: BoxDecoration(
                        color: Color(0xFFececf8),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search...",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffef2b39),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: 30.0),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(), // scroll smooth
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return categoryTile(
                      categories[index].name!,
                      categories[index].image!,
                      index.toString(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryTile(String name, String image, String categoryindex) {
    return GestureDetector(
      onTap: () {
        track = categoryindex.toString();
        setState(() {}); 
      },
      child: track == categoryindex
          ? Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xffef2b39),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Lottie.asset(image, height: 40, width: 40, fit: BoxFit.cover),
                  Text(name, style: AppWidget.whiteTextFeildStyle()),
                ],
              ),
            )
          : Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Lottie.asset(image, height: 40, width: 40, fit: BoxFit.cover),
                  Text(name, style: AppWidget.simpleTextFeildStyle()),
                ],
              ),
            ),
    );
  }
}
