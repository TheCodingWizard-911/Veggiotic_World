import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:veggiotic_world/models/productCategory.dart';

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

  final CollectionReference categoryCollection =
      FirebaseFirestore.instance.collection("Products");

  List<Category> _categoryListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Category(
        url: doc.data()['url'],
        description: doc.data()['description'],
      );
    }).toList();
  }

  Stream<List<Category>> get categories {
    return categoryCollection.snapshots().map(_categoryListFromSnapshot);
  }
}
