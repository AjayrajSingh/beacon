import 'package:beacon/Controllers/onboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnboardingContoller onboardingController = Get.find();
    return Container(
      width: 60.0,
      height: 15.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => AnimatedContainer(
              duration: Duration(
                milliseconds: 200,
              ),
              height: onboardingController.currentSliderPage.value == 0
                  ? 12.0
                  : 8.0,
              width: onboardingController.currentSliderPage.value == 0
                  ? 12.0
                  : 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: onboardingController.currentSliderPage.value == 0
                    ? Color(0xff7433FF)
                    : Color(0xffFFACFD),
              ),
            ),
          ),
          Obx(
            () => AnimatedContainer(
              duration: Duration(
                milliseconds: 200,
              ),
              height: onboardingController.currentSliderPage.value == 1
                  ? 12.0
                  : 8.0,
              width: onboardingController.currentSliderPage.value == 1
                  ? 12.0
                  : 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: onboardingController.currentSliderPage.value == 1
                    ? Color(0xff7433FF)
                    : Color(0xffFFACFD),
              ),
            ),
          ),
          Obx(
            () => AnimatedContainer(
              duration: Duration(
                milliseconds: 200,
              ),
              height: onboardingController.currentSliderPage.value == 2
                  ? 12.0
                  : 8.0,
              width: onboardingController.currentSliderPage.value == 2
                  ? 12.0
                  : 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: onboardingController.currentSliderPage.value == 2
                    ? Color(0xff7433FF)
                    : Color(0xffFFACFD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
