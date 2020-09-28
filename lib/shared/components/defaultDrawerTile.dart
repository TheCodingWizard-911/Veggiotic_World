import 'package:flutter/material.dart';

class DefaultDrawerTile extends StatefulWidget {
  const DefaultDrawerTile({
    Key key,
    @required this.leadingIcon,
    @required this.title,
    @required this.nextRoute,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String nextRoute;

  @override
  _DefaultDrawerTileState createState() => _DefaultDrawerTileState();
}

class _DefaultDrawerTileState extends State<DefaultDrawerTile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context).settings.name;
    if (widget.nextRoute == currentRoute) {
      setState(() {
        isSelected = true;
      });
    }
    return ListTile(
      onTap: () async {
        if (widget.nextRoute != currentRoute) {
          Navigator.pushNamed(context, widget.nextRoute);
        }
      },
      leading: Icon(widget.leadingIcon),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      selected: isSelected,
    );
  }
}
