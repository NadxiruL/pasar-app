import 'package:flutter/material.dart';
import 'main_screen.daart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasar',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Pasar(),
    );
  }
}
