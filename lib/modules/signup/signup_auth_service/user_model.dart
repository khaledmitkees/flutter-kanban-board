import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  final String? email;
  String? password;
  UserModel({this.uid, this.email, this.password});

  Map<String, dynamic> toMap() {
    return {'email': email};
  }

  UserModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : uid = doc.id,
        email = doc.data()!["email"];

  UserModel copyWith({String? uid, String? email, String? password}) {
    return UserModel(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        password: password ?? this.password);
  }
}
