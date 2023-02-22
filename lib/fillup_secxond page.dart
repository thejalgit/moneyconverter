import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dynamo extends StatefulWidget {
  const Dynamo({Key? key}) : super(key: key);

  @override
  State<Dynamo> createState() => _DynamoState();
}

class _DynamoState extends State<Dynamo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Text('thejalthej',style: TextStyle(fontSize: 26,color: Colors.red,)),
            Text('123456789',style: TextStyle(fontSize: 26,color: Colors.redAccent)),
            Text('thejalthe11@gmai.com',style: TextStyle(fontSize: 26,color: Colors.redAccent)),
            Text('7907936554',style: TextStyle(fontSize: 26,color: Colors.redAccent)),
            Text('22',style: TextStyle(fontSize: 26,color: Colors.redAccent)),
          ],
        ),
      ),
    );
  }
}
