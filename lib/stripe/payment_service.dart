// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';


// class PaymentService{
//   addCard(token){
//     FirebaseAuth.instance.currentUser().then((user){
//      Firestore.instance.collection("cards")
//      .document(user.uid)
//      .collection('tokens')
//      .add({
//        'tokenid':token,

//      }).then((val){
//        print('Save token data');
//      });
//     });
//   }
// }