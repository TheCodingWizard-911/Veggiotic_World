import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/constants.dart';

class DefaultDrawerHeader extends StatelessWidget {
  const DefaultDrawerHeader({
    Key key,
    this.name = "Your Name",
    this.email = "emailid123@gmail.com",
  }) : super(key: key);

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.only(right: 24.0, left: 10.0),
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        children: [
          Icon(
            Icons.account_circle,
            size: 100,
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                email,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
