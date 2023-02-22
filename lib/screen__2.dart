import 'package:flutter/material.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sadfghjkl'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 1000,
                  width: 390,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
