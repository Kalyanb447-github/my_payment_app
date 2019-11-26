import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

class RazerPay extends StatefulWidget {
  @override
  _RazerPayPageState createState() => _RazerPayPageState();
}

class _RazerPayPageState extends State<RazerPay> {
  int totalAmotnt = 0;
  Razorpay _razorpay;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _razorpay = Razorpay();
      _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
        _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _razorpay.clear();
  }

  void openCheckOut() async {
    var options = {
      'key': 'rzp_test_TEt7ZbQysSKXDa',
      'amount': totalAmotnt * 100, //for make the money into paise
      'name': 'kalyan',
      'discription': 'test payment',
      'prefill': {'contact': '', 'email': ''},
      'external': {
        'wallets': ['paytm'],
      },
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }
 void _handlePaymentSuccess(PaymentSuccessResponse response){
   Fluttertoast.showToast(msg: 'SUCCESS: ' + response.paymentId );
 }
 

  void _handlePaymentError(PaymentFailureResponse response){
   Fluttertoast.showToast(msg: 'Error: '+response.code.toString()+ ' , ' + response.message );
 }

  void _handleExternalWallet(ExternalWalletResponse response){
   Fluttertoast.showToast(msg: 'External Wallet: ' + response.walletName );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('In app payment in flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LimitedBox(
              maxWidth: 150,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Please enter some amount',
                ),
                onChanged: (value) {
                  setState(() {
                    this.totalAmotnt = num.parse(value);
                  });
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text(
                'make payment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                openCheckOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
