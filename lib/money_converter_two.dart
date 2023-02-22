

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newconverter extends StatefulWidget {
  const newconverter({Key? key}) : super(key: key);

  @override
  State<newconverter> createState() => _newconverterState();
}

class _newconverterState extends State<newconverter> {

  TextEditingController indiancontroller=TextEditingController();
  TextEditingController uscontroller=TextEditingController();
  TextEditingController eurocontroller=TextEditingController();
  TextEditingController riyalcontroller=TextEditingController();
  TextEditingController canadiancontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Converter',style: TextStyle(fontStyle:FontStyle.italic)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: indiancontroller,
                onChanged: (a){
              uscontroller .text= '${double.parse(a)/80}';
               eurocontroller .text='${double.parse(a)/90}';
               riyalcontroller.text='${double.parse(a)/88}';
               canadiancontroller.text='${double.parse(a)/85}';


                },
                decoration: InputDecoration(
                  label: Text('Indian rupees'),
                  filled: true,
                  fillColor: Colors.black54,
                  focusColor: Colors.cyanAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: uscontroller,
                onChanged: (b){
                indiancontroller.text= '${ double.parse(b)*80}';
                eurocontroller.text= '${ double.parse(b)*80}';
                riyalcontroller.text='${double.parse(b)*88}';
                canadiancontroller.text= '${double.parse(b)*88}';
                },
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  fillColor: Colors.black54,
                  filled: true,
                  label: Text('US dollar'),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: eurocontroller,
                onChanged: (c){

                  indiancontroller.text=  '${ double.parse(c)*80}';
                  riyalcontroller.text='${double.parse(c)*88}';
                  canadiancontroller.text= '${double.parse(c)*88}';
                  uscontroller .text= '${double.parse(c)*80}';
                },
                decoration: InputDecoration(
                  label: Text('euro'),
                  filled: true,
                  fillColor: Colors.black54,
                  focusColor: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: riyalcontroller,
                onChanged: (d){
                  uscontroller .text= '${double.parse(d)*80}';
                  indiancontroller.text=  '${ double.parse(d)*80}';
                  canadiancontroller.text= '${double.parse(d)*88}';
                  eurocontroller.text= '${ double.parse(d)*80}';
                },
                decoration:InputDecoration(
                  focusColor: Colors.orangeAccent,
                  label: Text('Riyal'),
                  fillColor: Colors.black54,
                  filled: true,
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: canadiancontroller,
                onChanged: (e){
                  eurocontroller.text= '${ double.parse(e)*80}';
                  uscontroller .text= '${double.parse(e)*80}';
                  indiancontroller.text=  '${ double.parse(e)*80}';
                  riyalcontroller.text='${double.parse(e)*88}';
                  },

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  label: Text('canadian'),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
