import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geek extends StatefulWidget {
  const Geek({Key? key}) : super(key: key);

  @override
  State<Geek> createState() => _GeekState();
}

class _GeekState extends State<Geek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geeks for Geeks'),

      ),


    );

  }
}
