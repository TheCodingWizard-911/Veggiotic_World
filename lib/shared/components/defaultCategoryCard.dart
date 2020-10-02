import 'package:flutter/material.dart';

class DefaultCategoryCard extends StatelessWidget {
  const DefaultCategoryCard({
    Key key,
    @required this.url,
    @required this.onPress,
    @required this.description,
  }) : super(key: key);

  final String url;
  final Function onPress;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image(
                height: 200,
                image: NetworkImage(url),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
