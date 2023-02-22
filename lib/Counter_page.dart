import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({Key? key}) : super(key: key);

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int counter = 0;

  getData() async {
    var sp = await SharedPreferences.getInstance();
    setState(() {
      counter = sp.getInt('count')!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
      ),
      body: Center(
        child: Text('$counter', style: TextStyle(fontSize: 100)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () async {}),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              setState(() {
                counter++;
              });

              var za = await SharedPreferences.getInstance();
              za.setInt('count', counter);
            },
          ),
          FloatingActionButton(onPressed: () async {
            var ca = await SharedPreferences.getInstance();
            ca.clear();
            setState(() {
              counter = 0;
            });
          }),
        ],
      ),
    );
  }
}
