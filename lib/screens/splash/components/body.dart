import 'package:flutter/material.dart';
import 'package:veggiotic_world/screens/authentication/signIn/signInScreen.dart';
import 'package:veggiotic_world/shared/components/defaultButton.dart';
import 'package:veggiotic_world/shared/components/defaultLogo.dart';
import 'package:veggiotic_world/shared/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          DefaultLogo(heightFactor: 0.63),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Welcome To Veggiotic World !",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          fontFamily: 'Maian'),
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      "click on the following button and\nstart browsing our products",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    DefaultButton(
                      buttonText: "Get Started",
                      onTap: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
