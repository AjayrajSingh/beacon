import 'package:flutter/cupertino.dart';

class BeaconColors {
  //===[Colors]===

  static final Color primary = Color(0xff7534FF);
  static final Color secondary = Color(0xffFFACFC);
  static final Color darkGrey = Color(0xff393939);
  static final Color lightGrey = Color(0xff5F5F5F);

  //===[GRADIENTS]===

  static final LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      primary,
      secondary,
    ],
  );
}
