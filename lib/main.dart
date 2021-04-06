import 'package:beacon/Screens/Splash/splash.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Beacon());
}

class Beacon extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beacon',
      home: Splash(),
    );
  }
}
