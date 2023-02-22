import 'package:flutter/material.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      title: Text('Flutter'),
    ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(

            
            children: [

              Text('FLUTTER',style: TextStyle(fontSize: 37,)),
              Text('Flutter is google ui toolkit for building beautiful,natively compiled application for mobile and web'
            ,style: TextStyle(fontSize: 26,),  ),
            ],
          ),

          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(30),
          height: double.infinity,

          width: double.infinity,
        )


      ),

    );
  }
}
