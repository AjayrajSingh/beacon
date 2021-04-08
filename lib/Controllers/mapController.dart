import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  RxString mapStyle = ''.obs;
  var controller = Completer().obs;

  var kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  ).obs;

  @override
  void onInit() {
    super.onInit();
    rootBundle.loadString('assets/mapStyle.txt').then((string) {
      mapStyle.value = string;
    });
  }
}
