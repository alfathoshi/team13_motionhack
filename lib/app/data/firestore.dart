import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreDatabase {
  User? user = FirebaseAuth.instance.currentUser;
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  Future<void> addPost(String username, String message, String jam, String menit) {
    return posts.add({
      'UserName': username,
      'PostMessage': message,
      'TimeStamp': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getPostStream() {
    final postStream = posts.orderBy('TimeStamp', descending: true).snapshots();
    return postStream;
  }
}
