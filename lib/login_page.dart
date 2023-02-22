import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Loginpagee extends StatefulWidget {
  const Loginpagee({Key? key}) : super(key: key);

  @override
  State<Loginpagee> createState() => _LoginpageeState();
}

class _LoginpageeState extends State<Loginpagee> {
  String data = '';
  String datatwo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.pink,
                ),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 90, bottom: 100),
                child: TextField(
                  onChanged: (v) {
                    data = v;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.black26,
                    filled: true,
                    label: Text('user name'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (c) {
                    datatwo = c;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.black26,
                      filled: true,
                      label: Text('password`'),
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                onPressed: () {

                  if (data == 'thejalthej'&& datatwo=='123456') {
                    Fluttertoast.showToast(msg: 'sucess',backgroundColor: Colors.greenAccent,textColor: Colors.redAccent);

                  } else {
                   Fluttertoast.showToast(msg: 'incorrect');
                  }


                  print('data');
                  print('datatwo');
                },
                child: Text('lOGIN'),
              )

              // Container(
              //   child: Text(
              //     'Login',
              //     style: TextStyle(
              //       fontStyle: FontStyle.italic,
              //       color: Colors.white,
              //     ),
              //   ),
              //   alignment: Alignment.center,
              //   color: Colors.pinkAccent,
              //   height: 50,
              //   width: 100,
              // )
            ],
          ),
          margin: EdgeInsets.all(30),
          color: Colors.white,
          height: 700,
          width: 320,
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
