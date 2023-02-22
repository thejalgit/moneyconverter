// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Password extends StatefulWidget {
//   const Password({Key? key}) : super(key: key);
//
//   @override
//   State<Password> createState() => _PasswordState();
// }
//
// class _PasswordState extends State<Password> {
//   var rkey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Form(
//           key: rkey,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 100),
//                 child: TextFormField(
//                   style: TextStyle(fontSize: 22,color: CupertinoColors.white),
//                   keyboardType: TextInputType.visiblePassword,
//                   validator: (a) {     return ('eassy');
//                     } else if (a.length <= 6) {
//                       return 'medium';
//                     } else if (a.length <= 8) {
//                       return 'too strong';
//                     }
//                   },
//                   // autovalidateMode:AutovalidateMode.onUserInteraction,
//                   onChanged: (a) {
//                     rkey.currentState!.validate();
//                   },
//
//                   decoration: InputDecoration(
//                     fillColor: Colors.pinkAccent.shade200,focusColor: Colors.orangeAccent,
//                     errorStyle: TextStyle(color: Colors.green.shade200,
//                       style: TextStyle(fontSize: 20,color: Colors.black38),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
