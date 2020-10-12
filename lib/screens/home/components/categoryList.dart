import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggiotic_world/models/productCategory.dart';
import 'package:veggiotic_world/shared/components/defaultCard.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<List<Category>>(context) ?? [];

    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return DefaultCard(
          url: categories[index].url,
          onPress: () => {
            print("Pressed"),
          },
          description: categories[index].description,
        );
      },
    );
  }
}
