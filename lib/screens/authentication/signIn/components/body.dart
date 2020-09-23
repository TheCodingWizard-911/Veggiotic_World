import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/components/defaultLogo.dart';
import 'package:veggiotic_world/shared/constants.dart';

import 'signInForm.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          DefaultLogo(heightFactor: 0.25),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: SignInForm(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
