import 'package:flutter/cupertino.dart';
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
        title: Text(
          'Hello',
          textAlign: TextAlign.center,
        ),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Text('Hello'),
              Text('Hello'),
            ],
          ),
          Column(
            children: [
              Text('Hello'),
              Text('Hello'),
            ],
          ),
        ],
      ),
    );
  }
}
