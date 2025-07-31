import 'package:flutter/material.dart';
import 'package:flutter_app/data/constans.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.keyConcepts,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.basicLayout,
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Hadezer Mapp'), // HeroWidget
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'This is a description',
              ); // ContainerWidget
            }),
          ],
        ), // Column
      ), // SingleChildScrollView
    ); // Padding
  }
}
