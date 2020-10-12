import 'package:flutter/material.dart';

import 'categoryList.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CategoryList(),
    );
  }
}
