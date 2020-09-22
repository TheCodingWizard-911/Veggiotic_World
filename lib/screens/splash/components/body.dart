import 'package:flutter/material.dart';
import 'package:veggiotic_world/screens/loading/loadingScreen.dart';
import 'package:veggiotic_world/shared/components/defaultButton.dart';
import 'package:veggiotic_world/shared/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight * 0.63,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Image(
                image: AssetImage("assets/icons/Logo.png"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: primaryBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0)),
              ),
              width: screenWidth,
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
                    SizedBox(height: 25.0),
                    Text(
                      "click on the following button and\nstart browsing our products",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    DefaultButton(
                      buttonText: "Get Started",
                      onTap: () {
                        Navigator.pushNamed(context, LoadingScreen.routeName);
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
