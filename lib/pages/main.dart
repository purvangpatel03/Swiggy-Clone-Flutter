import 'package:flutter/material.dart';
import 'package:swiggy_clone/pages/home.dart';
import '../styling/themes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
