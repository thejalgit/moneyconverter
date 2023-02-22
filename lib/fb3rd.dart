import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fbthird extends StatefulWidget {
  const fbthird({Key? key}) : super(key: key);

  @override
  State<fbthird> createState() => _fbthirdState();
}

class _fbthirdState extends State<fbthird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook'),
      ),
      body: Center(
        child: Text('sucess',style: TextStyle(fontSize: 23)),
      ),
    );
  }
}
