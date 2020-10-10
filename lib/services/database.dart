import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("Users");

  Future updateUserData(String name) async {
    return await userCollection.doc(uid).set({
      'name': name,
    });
  }

  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection("Products");

  Stream<QuerySnapshot> get products {
    return productCollection.snapshots();
  }
}
