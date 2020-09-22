import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.onTap,
    @required this.buttonText,
    this.buttonTextColor = Colors.black,
    this.buttonWidth = 0.75,
    this.buttonHeight = 50.0,
    this.buttonElevation = 5.0,
    this.buttonColor = Colors.lightGreen,
    this.onLongPressed,
  }) : super(key: key);

  final Function onTap;
  final String buttonText;
  final Color buttonTextColor;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonElevation;
  final Color buttonColor;
  final Function onLongPressed;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * buttonWidth,
      height: buttonHeight,
      child: RaisedButton(
        onPressed: onTap,
        onLongPress: onLongPressed,
        elevation: buttonElevation,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: 'Nunito',
            color: buttonTextColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
