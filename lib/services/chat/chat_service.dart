import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
//get instance of service

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// get user stress
/*

<List<Map<String,dynamic>

[
{
'email': test@gmail.com,
'id':..
}

{
'email':prasad@gmail.com,
'id':..
},
]

*/
  Stream<List<Map<String, dynamic>>> getUserStress() {
    return _firestore.collection('users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        // go thought each individal user
        final user = doc.data();

        //return user
        return user;
      }).toList();
    });
  }

// send message

//get message
}
