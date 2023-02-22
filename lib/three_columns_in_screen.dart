import 'package:flutter/material.dart';

class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(child: Text('Flutter by google',style: TextStyle(fontSize: 22),),
            color: Colors.red,
            height: 120,
            width: 180,
          ),
          Container(
            alignment: Alignment.center,
            child: Text('flutter is most simple and best app developing software',style: TextStyle(fontSize: 22),textAlign: TextAlign.center),
            color: Colors.blue,
            height: 120,
            width: 180,
          )
        ],
      ),
      Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text('flutter ',style:TextStyle(fontSize:65 ) ,textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.all(30),
           padding: EdgeInsets.all(30),

            color: Colors.green,
            height: 200,
            width: 300,
          )
        ],
      )
    ],
  ),

)
    );
  }
}
