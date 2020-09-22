import 'package:flutter/material.dart';
import 'package:veggiotic_world/screens/splash/splashScreen.dart';
import 'package:veggiotic_world/shared/routes.dart';
import 'package:veggiotic_world/shared/theme.dart';

void main() {
  runApp(VeggioticWorld());
}

class VeggioticWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Veggiotic World",
      theme: theme(),
      routes: routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}
