// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:my_payment_app/stripe/home_page.dart';
// class StripeLogin extends StatefulWidget {
//   @override
//   _StripeLoginState createState() => _StripeLoginState();
// }

// class _StripeLoginState extends State<StripeLogin> {
//   String email,password;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stripe Firebase Login'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(15),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(hintText: 'Email'),
//                 onChanged: (val){
//                   setState(() {
//                    this.email=val;
//                   });
//                 },
//               ),
//                  TextField(
//                 decoration: InputDecoration(hintText: 'Password'),
//                 obscureText: true,
//                 onChanged: (val){
//                   setState(() {
//                    this.password=val;
//                   });                  
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               RaisedButton(
//                 child: Text('Login'),
//                 textColor: Colors.white,
//                 color: Colors.red,
//                 onPressed: (){
//                   FirebaseAuth.instance
//                   .signInWithEmailAndPassword(email: email,password: password)
//                   .then((onValue){
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context)=>HomePage(),
//                   ));
//                   });

//                 },
//               ), 
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }