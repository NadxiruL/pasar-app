import 'package:flutter/material.dart';

class Pasar extends StatefulWidget {
  const Pasar({Key? key}) : super(key: key);

  @override
  _PasarState createState() => _PasarState();
}

class _PasarState extends State<Pasar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Stack(
        children: [
          Text(
            'Hello',
            textDirection: TextDirection.rtl,
          ),
          Text(
            'Hello',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
