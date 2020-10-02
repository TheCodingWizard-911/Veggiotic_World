import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/constants.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Body(),
    );
  }
}
