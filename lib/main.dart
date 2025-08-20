import 'package:flutter/material.dart';
import 'package:flutter_app/flutter/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 1, 51, 19),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Obscured TextField Sample")),
        body: const Center(child: ObscuredTextFieldSample()),
      ),
    );
  }
}
