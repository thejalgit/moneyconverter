import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geeky extends StatefulWidget {
  const Geeky({Key? key}) : super(key: key);

  @override
  State<Geeky> createState() => _GeekyState();
}

class _GeekyState extends State<Geeky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: 150,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
