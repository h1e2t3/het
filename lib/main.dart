import 'package:flutter/material.dart';
import 'package:het/Screens/First_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Ha1(),
    );
  }
}


