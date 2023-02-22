import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class currency extends StatefulWidget {
  const currency({Key? key}) : super(key: key);

  @override
  State<currency> createState() => _currencyState();
}

class _currencyState extends State<currency> {
  String dataone = '';
  String datatwo = '';
  TextEditingController moneycontroller = TextEditingController();
  TextEditingController inrcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency converter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('currency converter', style: TextStyle(fontSize: 24)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: moneycontroller,
                onChanged: (a) {
                  '${double.parse(a)/80}';


                  dataone = a;
                },
                decoration: InputDecoration(
                  label: Text('dollor'),
                  filled: true,
                  fillColor: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: inrcontroller,
                onChanged: (b) {
                  double.parse(inrcontroller.text)*80;
                  datatwo = b;
                },
                decoration: InputDecoration(
                    fillColor: Colors.black54,
                    filled: true,
                    label: Text('INR')),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  double z = double.parse(moneycontroller.text)/80;
                  // z.toString();
                  inrcontroller.text=z.toString();
                },
                child: Text(
                  'TO INR',
                )),
            ElevatedButton(onPressed: (){
           moneycontroller.text=   '${double.parse(inrcontroller.text)*80}';
            }, child: Text('TO USD'))
          ],
        ),
      ),
    );
  }
}
