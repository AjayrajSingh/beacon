import 'package:beacon/Screens/Splash/splash.dart';
import 'package:beacon/Theme/beaconColors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Beacon());
}

class Beacon extends StatelessWidget {
  // This widget is the root of yotheur application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: BeaconColors.primary,
        accentColor: BeaconColors.secondary,
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Beacon',
      home: Splash(),
    );
  }
}
