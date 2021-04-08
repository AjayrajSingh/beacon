import 'dart:async';
import 'package:beacon/Controllers/mapController.dart';
import 'package:beacon/Theme/beaconColors.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleMapController gMapController;
  MapController _mapController = Get.put(MapController());
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Text("Beacon"),
        centerTitle: true,
        actions: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(
                color: BeaconColors.secondary,
                width: 4,
              ),
              shape: BoxShape.circle,
              color: BeaconColors.secondary,
            ),
            child: Icon(
              Icons.person_outline,
              color: BeaconColors.lightGrey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      backLayer: Center(
        child: Text("Back Layer"),
      ),
      frontLayer: Obx(() => GoogleMap(
            buildingsEnabled: true,
            mapToolbarEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: _mapController.kGooglePlex.value,
            onMapCreated: (GoogleMapController controller) {
              _mapController.controller.value.complete(controller);
              gMapController = controller;
              gMapController.setMapStyle(_mapController.mapStyle.value);
            },
          )),
    );
  }
}
