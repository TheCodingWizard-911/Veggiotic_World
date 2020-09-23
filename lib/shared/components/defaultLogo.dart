import 'package:flutter/material.dart';

class DefaultLogo extends StatelessWidget {
  const DefaultLogo({
    Key key,
    @required this.heightFactor,
  }) : super(key: key);

  final double heightFactor;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * heightFactor,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Image(
          image: AssetImage("assets/icons/Logo.png"),
        ),
      ),
    );
  }
}
