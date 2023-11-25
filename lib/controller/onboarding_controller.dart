// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../core/services/services.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onpagechanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pagecontroller;
  int currentpage = 0;
  MyServices myservises = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onboardinglist.length - 1) {
      myservises.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoutes.signin);
    } else
      // ignore: curly_braces_in_flow_control_structures
      pagecontroller.animateToPage(currentpage,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
