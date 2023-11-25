// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';

class CustomButtonOnboarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 143, 5, 255),
            Color.fromARGB(255, 62, 3, 110),
          ])),
      padding: const EdgeInsets.only(top: 2),
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        child: const Text(
          "continue",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              fontFamily: 'Sevillana',
              color: Color.fromARGB(255, 247, 247, 247)),
        ),
      ),
    );
  }
}
