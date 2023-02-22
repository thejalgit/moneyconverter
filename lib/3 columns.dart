

import 'package:flutter/material.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(

              children: [
                Container(
                  child: Row(
                    children: [
                    ],

                  ),
                  color: Colors.greenAccent,
                  height: 100,
                  width: 150,



                )
              ],


            ),
            Row(
           mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(

                  ),
                  color: Colors.blue,
                  height: 100,
                  width: 150,


                ),
                Container(
                  color: Colors.orangeAccent,
                  height: 100,
                  width: 150,
                )
                ],



            )
          ],
        ),


      ),
    );

  }
}
