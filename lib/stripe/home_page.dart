// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:my_payment_app/stripe/payment_service.dart';
// import 'package:stripe_payment/stripe_payment.dart';
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   StripeSource.setPublishableKey('pk_test_tzAnrBdq0yD198Uz6WMcvlcs006slaY6cR');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//          appBar: AppBar(
//         title: Text('Stripe homepage'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           RaisedButton(
//              child: Text('Add Card'),
//                 textColor: Colors.white,
//                 color: Colors.green,
//                 onPressed: (){
//                    StripeSource.addSource().then((token){
//                      PaymentService().addCard(token);
//                    });
//                 },

//           ),
//         ],
//         ),

//       ),
//     );
//   }
// }