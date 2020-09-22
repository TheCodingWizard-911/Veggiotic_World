import 'package:flutter/material.dart';
import 'package:veggiotic_world/screens/loading/loadingScreen.dart';
import 'package:veggiotic_world/screens/splash/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoadingScreen.routeName: (context) => LoadingScreen(),
};
