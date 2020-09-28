import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/components/defaultCategoryCard.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(24.0),
        children: [
          SizedBox(
            height: 24,
          ),
          DefaultCategoryCard(
            url:
                "https://cdn.sanity.io/images/0vv8moc6/contobgyn/b72d5bf4f6a84b6ca4af8f330f19b1ec7acb877e-3504x2336.jpg",
            onPress: () {
              print("Vegetables Pressed");
            },
            description: "Vegetables",
          ),
          SizedBox(
            height: 48,
          ),
          DefaultCategoryCard(
            url: "https://guardian.ng/wp-content/uploads/2016/01/fruit-4.jpg",
            onPress: () {
              print("Fruits Pressed");
            },
            description: "Fruits",
          ),
          SizedBox(
            height: 48,
          ),
          DefaultCategoryCard(
            url:
                "https://www.gfs.com/sites/default/files/styles/open_graph_image/public/02306_Food_Safety_Dairy_ICStoryHeader_695x375.png?itok=Mbxrwz-5",
            onPress: () {
              print("Dairy Pressed");
            },
            description: "Dairy",
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
