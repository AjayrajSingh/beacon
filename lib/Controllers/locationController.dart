import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class LocationContoller extends GetxController {
  var location = Location().obs;

  bool _serviceEnabled;
  var _permissionGranted;
  var _locationData;

  @override
  void onInit() {
    super.onInit();
    getPermissionStatus();
    enableService();
  }

  enableService() async {
    _serviceEnabled = await location.value.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.value.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
  }

  getPermissionStatus() async {
    _permissionGranted = await location.value.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.value.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  getLocationData() async {
    _locationData = await location.value.getLocation();
    return _locationData;
  }
}
