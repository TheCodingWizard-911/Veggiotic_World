import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:veggiotic_world/shared/components/defaultCard.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<QuerySnapshot>(context);

    List pl = products.docs;

    return ListView.builder(
      itemCount: pl.length,
      itemBuilder: (context, index) {
        return DefaultCard(
          url: pl[index].data()['url'],
          onPress: () => {
            print("Pressed"),
          },
          description: pl[index].data()['description'],
        );
      },
    );
  }
}
