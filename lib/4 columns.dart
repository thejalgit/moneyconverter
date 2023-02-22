import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                   child: Column(

                     children: [
                       Text("ghjk"),
                       Text("ghjk"),
                     ],
                   ),
                  color: Colors.red,
                  height: 100,
                  width: 150,


                ),
                Container(
                  child: Row(
                    children: [
                      Text("ghjk"),

                    ],
                  ),

                  color: Colors.orange,
                  height: 100,
                  width: 150,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('dc')
                    ],
                  ),
                  color: Colors.blue,
                  height: 100,
                  width: 150,


                ),
                Container(
                  child: Center(child: Text('gfsg'),),
                  color: Colors.pink,
                  height: 100,
                  width: 150,
                ),

              ],
            ),

          ],
        ),
      ),
    );

  }
}
