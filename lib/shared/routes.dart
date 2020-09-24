import 'package:flutter/material.dart';
import 'package:veggiotic_world/screens/authentication/signIn/signInScreen.dart';
import 'package:veggiotic_world/screens/authentication/signUp/signUpScreen.dart';
import 'package:veggiotic_world/screens/loading/loadingScreen.dart';
import 'package:veggiotic_world/screens/splash/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoadingScreen.routeName: (context) => LoadingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
