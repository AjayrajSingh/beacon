import 'package:beacon/Screens/Onboarding/onboarding.dart';
import 'package:beacon/Screens/homeScreen.dart';
import 'package:beacon/Services/authServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      'assets/beaconSplash.flr',
      FutureBuilder(
        future: _authServices.getCurrentUser(),
        builder: (context, AsyncSnapshot<User> snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return Onboarding();
          }
        },
      ),
      backgroundColor: Colors.white,
      startAnimation: 'Intro',
    );
  }
}
