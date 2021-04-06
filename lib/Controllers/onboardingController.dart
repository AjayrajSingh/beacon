import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingContoller extends GetxController {
  var pageController = PageController(initialPage: 0).obs;
  var currentSliderPage = 0.obs;

  @override
  void onInit() {
    pageController.value.addListener(() {
      int next = pageController.value.page.round();

      if (currentSliderPage.value != next) {
        currentSliderPage.value = next;
      }
    });
    print('Chnaged Page to: ${currentSliderPage.value}');
    super.onInit();
  }
}
