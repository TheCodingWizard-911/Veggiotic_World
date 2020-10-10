import 'package:flutter/material.dart';

import 'homeList.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HomeList(),
    );
  }
}
