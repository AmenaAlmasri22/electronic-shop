// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnboarding extends StatelessWidget {
  const CustomDotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
        builder: ((controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                onboardinglist.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 62, 3, 110),
                      borderRadius: BorderRadius.circular(10)),
                  height: controller.currentpage == index ? 20 : 10,
                  width: controller.currentpage == index ? 20 : 10,
                ),
              )
            ])));
  }
}
