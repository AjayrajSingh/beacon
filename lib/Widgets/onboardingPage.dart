import 'package:beacon/Controllers/onboardingController.dart';
import 'package:beacon/Theme/beaconColors.dart';
import 'package:beacon/Widgets/pageIndicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  String image;
  String title;
  String description;

  OnboardingPage({
    @required this.image,
    @required this.title,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 60.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  '$image',
                  scale: 1.4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w900,
              color: BeaconColors.darkGrey,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$description',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: BeaconColors.lightGrey,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PageIndicator(),
              Text(
                'SKIP',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: BeaconColors.lightGrey.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
