import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/constants.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Body(),
    );
  }
}
