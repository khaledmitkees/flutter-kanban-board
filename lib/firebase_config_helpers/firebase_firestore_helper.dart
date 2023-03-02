import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Map<String, dynamic>>> getDocument(String path) {
    return _firestore.doc(path).get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCollection(String path) {
    return _firestore.collection(path).get();
  }
}
