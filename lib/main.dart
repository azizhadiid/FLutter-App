import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// state
// material app
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // Here
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'), centerTitle: true),
      body: currentIndex == 0
          ? Center(child: Text('1')) // Center
          : Center(child: Text('2')), // Center
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ), // NavigationDestination
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ), // NavigationDestination
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
