import 'package:colums_rows_creating/3%20columns.dart';
import 'package:colums_rows_creating/fillup_secxond%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fillup extends StatefulWidget {
  const Fillup({Key? key}) : super(key: key);

  @override
  State<Fillup> createState() => _FillupState();
}

class _FillupState extends State<Fillup> {
  String dataone = '';
  String datatwo = '';
  String datathree = '';
  String datafour = '';
  String datafive = '';

  @override
  Widget build(BuildContext context) {
    var fkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: fkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (z) {
                      if (z!.isEmpty) {
                        return 'name is empty';
                      } else if (z.length < 5) {
                        return 'namne is too short';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (a) {
                      dataone = a;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      label: Text('username'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (x) {
                      if (x!.isEmpty) {
                        return 'password is empty';
                      } else if (x.length < 8) {
                        return 'password is too short';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (b) {
                      datatwo = b;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.red,
                      filled: true,
                      label: Text('password'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (m) {
                      if (m!.isEmpty) {
                        return 'email is empty';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (c) {
                      datathree = c;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.orangeAccent,
                      filled: true,
                      label: Text('email'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (p) {
                      if (p!.isEmpty) {
                        return 'phone no is empty';
                      }
                    },
                    keyboardType: TextInputType.phone,
                    onChanged: (d) {
                      datafour = d;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.purpleAccent,
                      filled: true,
                      label: Text('phone'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (l) {
                      if (l!.isEmpty) {
                        return 'age is empty';
                      } else if (int.parse(l) > 100) {
                        return 'to large';
                      }
                    },
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      datafive = e;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.pink,
                      filled: true,
                      label: Text('age'),
                      border: OutlineInputBorder(),
                      focusColor: Colors.cyan,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {



                      bool a = fkey.currentState!.validate();
                      print(a);
                      if (a) {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return Dynamo();}));
                      }else{
                        Fluttertoast.showToast(msg: 'please fill the form');
                      }
                      print(dataone);
                      print(datatwo);
                      print(datathree);
                      print(datafour);
                      print(datafive);

                    },
                    child: Text('login'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
