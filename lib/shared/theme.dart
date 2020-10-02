import 'package:flutter/material.dart';
import 'package:veggiotic_world/shared/constants.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    fontFamily: 'Nunito',
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    color: primaryColor,
    elevation: 10,
    brightness: Brightness.dark,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black87,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      ),
    ),
  );
}
