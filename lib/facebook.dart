import 'package:colums_rows_creating/facebook_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {

  String dataone = '';
  String datatwo='';
  @override
  Widget build(BuildContext context) {
    var rkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'facebook signup',
              style: TextStyle(
                                fontSize: 28,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (a) {
                  dataone = a;
                },
                decoration: InputDecoration(
                    fillColor: Colors.black54,
                    filled: true,
                    label: Text('username')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (b){
                  datatwo=b;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  label: Text('Password'),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return loginfb();
                  }));
                },
                child: Text('go to login page')),
            ElevatedButton(onPressed: () async {
              var zx = await SharedPreferences.getInstance();
              zx.setString('username', dataone);
              zx.setString('password', datatwo);

            },
            child: Text('Signup'),
            )
          ],
        ),
      ),
    );
  }
}
