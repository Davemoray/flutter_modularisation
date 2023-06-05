// import 'package:flutter/material.dart';
//
// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: const Color(0xFF00523F),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(height: 200),
//                 Text(
//                   "Login",
//                   style: TextStyle(
//                       fontSize: 50,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//                 SizedBox(height: 50),
//                 TextFormField(
//                   decoration: InputDecoration(labelStyle: TextStyle(color: Colors.white),
//                       labelText: 'Enter your customerID',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white))),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Please enter your ID";
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     print("your customer_ID is:");
//                   },
//                 ),
//                 SizedBox(height: 60),
//                 Container(
//                     width: 400,
//                     height: 40,
//                     decoration: BoxDecoration(color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(color: Colors.white)),
//                     child: const Center(
//                         child: Text("Login",
//                             style: TextStyle(
//                                 color: Color(0xFF00523F),
//                                 fontWeight: FontWeight.bold)))),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
