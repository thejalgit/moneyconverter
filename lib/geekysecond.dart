import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geeksone extends StatefulWidget {
  const Geeksone({Key? key}) : super(key: key);

  @override
  State<Geeksone> createState() => _GeeksoneState();
}

class _GeeksoneState extends State<Geeksone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks',
            style:
                TextStyle(color: Colors.white, backgroundColor: Colors.green)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                color: Color.fromRGBO(135, 201, 131, 0.8),
                height: 500,
                width: 360,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          child: Text('GeeksforGeeks',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54)),
                          backgroundColor: CupertinoColors.white,
                          radius: 80,
                        ),
                      ),

                    ),
                    Text('GeeksforGeeks'),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('GeeksforGeeks is a Computer science portalfor geeks at geeksforgeeks.org it contains well written,well thought and well explained computer science and programming articles quizzes project interview experiences and much more'),
                    ),

                    ElevatedButton(onPressed: (){

                    }, child: Text('login'))
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
