import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggiotic_world/screens/home/homeScreen.dart';
//import 'package:veggiotic_world/screens/splash/splashScreen.dart';
import 'package:veggiotic_world/services/authentication.dart';
import 'package:veggiotic_world/shared/routes.dart';
import 'package:veggiotic_world/shared/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(VeggioticWorld());
}

class VeggioticWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        title: "Veggiotic World",
        theme: theme(),
        routes: routes,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
