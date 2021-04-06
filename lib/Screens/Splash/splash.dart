import 'package:beacon/Screens/Onboarding/onboarding.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      'assets/beaconSplash.flr',
      Onboarding(),
      backgroundColor: Colors.white,
      startAnimation: 'Intro',
    );
  }
}
