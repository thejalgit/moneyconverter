import 'package:colums_rows_creating/fb3rd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginfb extends StatefulWidget {
  const loginfb({Key? key}) : super(key: key);

  @override
  State<loginfb> createState() => _loginfbState();
}

class _loginfbState extends State<loginfb> {
  String dataone='';
  String datatwo='';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('facebook login',style: TextStyle(fontSize: 28,color: Colors.blue,),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (a){
                  dataone=a;
                },
                decoration: InputDecoration(
                    fillColor: Colors.black54,
                    filled: true,
                    label: Text('username')
                ),
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
            ElevatedButton(onPressed: (){

            }, child: Text('login')),
            FloatingActionButton(onPressed: ()async{
              var za=await SharedPreferences.getInstance();
              setState(() {
             String uname=   za.getString('username')??'';
             String pass=   za.getString('password')??'';
                if(dataone==uname&&datatwo==pass){
            Navigator.push(context, MaterialPageRoute(builder: (context){return fbthird();}));
                }else{
                  Fluttertoast.showToast(msg: 'incorrect');

                }

              });
            })


          ],
        ),
      ),
    );
  }
}

