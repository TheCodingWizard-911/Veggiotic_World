import 'package:flutter/material.dart';

class DefaultTouchableIcon extends StatelessWidget {
  const DefaultTouchableIcon({
    Key key,
    @required this.onPress,
    @required this.icon,
    @required this.padding,
  }) : super(key: key);

  final Function onPress;
  final Icon icon;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: padding,
        child: icon,
      ),
    );
  }
}
