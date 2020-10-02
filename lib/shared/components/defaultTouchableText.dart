import 'package:flutter/material.dart';

class DefaultTouchableText extends StatelessWidget {
  const DefaultTouchableText({
    Key key,
    @required this.onPress,
    @required this.text,
    this.color = Colors.pink,
  }) : super(key: key);

  final Function onPress;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
