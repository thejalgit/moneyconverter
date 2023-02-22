import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class petermoney extends StatefulWidget {
  const petermoney({Key? key}) : super(key: key);

  @override
  State<petermoney> createState() => _petermoneyState();
}

class _petermoneyState extends State<petermoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money converter'),
      ),
    );
  }
}
