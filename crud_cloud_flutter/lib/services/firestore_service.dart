import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Stream<QuerySnapshot> getUsers() {
    return users.snapshots();
  }

  Future<void> addUser(String name) {
    return users.add({'name': name});
  }

  Future<void> updateUser(String id, String name) {
    return users.doc(id).update({'name': name});
  }

  Future<void> deleteUser(String id) {
    return users.doc(id).delete();
  }
}
