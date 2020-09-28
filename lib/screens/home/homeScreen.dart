import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/components/defaultDrawerHeader.dart';
import 'package:veggiotic_world/shared/components/defaultDrawerTile.dart';
import 'package:veggiotic_world/shared/components/defaultTouchableIcon.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  final List<Widget> actionWidgets = [
    DefaultTouchableIcon(
      onPress: () {
        print("Search");
      },
      padding: EdgeInsets.all(12.0),
      icon: Icon(
        Icons.search,
        size: 30,
      ),
    ),
    DefaultTouchableIcon(
      onPress: () {
        print("Cart");
      },
      padding: EdgeInsets.fromLTRB(
        8.0,
        12.0,
        24.0,
        12.0,
      ),
      icon: Icon(
        Icons.shopping_cart,
        size: 26,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: actionWidgets,
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            DefaultDrawerHeader(),
            DefaultDrawerTile(
              leadingIcon: Icons.home,
              title: "Home",
              nextRoute: HomeScreen.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
