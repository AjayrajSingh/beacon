import 'package:beacon/Controllers/onboardingController.dart';
import 'package:beacon/Widgets/onboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnboardingContoller onboardingController =
        Get.put(OnboardingContoller());
    return Scaffold(
      body: Obx(
        () => PageView(
          controller: onboardingController.pageController.value,
          scrollDirection: Axis.horizontal,
          children: [
            OnboardingPage(
              image: 'assets/images/lead.png',
              title: 'Become a\nbeacon',
              description:
                  'Lead your group and pick a\nroute for your followers',
            ),
            OnboardingPage(
              image: 'assets/images/follow.png',
              title: 'Track routes\neffortlessly',
              description:
                  'Follow a beacon to track it\'s live location and route',
            ),
            OnboardingPage(
              image: 'assets/images/enjoy.png',
              title: 'Enjoy the\ntour',
              description:
                  'Just enjoy the trip and let beacon\napp manage the things for you',
            ),
          ],
        ),
      ),
    );
  }
}
