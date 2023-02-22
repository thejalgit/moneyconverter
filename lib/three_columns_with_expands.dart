import 'package:flutter/material.dart';

class Secondclass extends StatefulWidget {
  const Secondclass({Key? key}) : super(key: key);

  @override
  State<Secondclass> createState() => _SecondclassState();
}

class _SecondclassState extends State<Secondclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: [
          Expanded(
              flex: 4,
              child: Container(
                child: Text('flutter',style: TextStyle(fontSize: 66),),alignment: Alignment.center
                ,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.redAccent,

          )),
          Expanded
            (
              flex:2,
          child: Container(
            child: Text('hii',style: TextStyle(fontSize: 65,),),alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.blue,

          ))
      ],
      ),

    );
  }
}
