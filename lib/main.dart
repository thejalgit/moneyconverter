


import 'package:colums_rows_creating/Counter_page.dart';
import 'package:colums_rows_creating/currency_converter.dart';
import 'package:colums_rows_creating/facebook.dart';
import 'package:colums_rows_creating/facebook_login.dart';
import 'package:colums_rows_creating/fb3rd.dart';
import 'package:colums_rows_creating/fillup.dart';
import 'package:colums_rows_creating/fillup_secxond%20page.dart';
import 'package:colums_rows_creating/geek.dart';
import 'package:colums_rows_creating/geekysecond.dart';
import 'package:colums_rows_creating/login_page.dart';
import 'package:colums_rows_creating/money_converter_two.dart';
import 'package:colums_rows_creating/password_too_short.dart';
import 'package:colums_rows_creating/peter.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,

      ),
      home:newconverter(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             color: Colors.blue,
             height: 100,
             width: 150,
           ),
           Container(
             color: Colors.red,
             height: 100,
             width: 150,

           ),


         ],
        ),



      ),

    );

  }
}
