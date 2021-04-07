import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeaconConstants {
  static final sideSpace = Get.width * 0.1;
  static final borderRadius = BorderRadius.circular(Get.width * 0.06);

  static final shadow = BoxShadow(
    blurRadius: 9.0,
    color: Colors.black12,
    offset: Offset(0, 12),
    spreadRadius: -9.0,
  );
}
