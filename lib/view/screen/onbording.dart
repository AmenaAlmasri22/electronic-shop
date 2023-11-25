// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, duplicate_ignore, sized_box_for_whitespace, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../widget/language/custombuttonlanguage.dart';
import '../widget/onboarding/customdotcotroller.dart';
import '../widget/onboarding/customslider.dart';
//import 'package:liquid_swipe/liquid_swipe.dart';

class Onboarding extends GetView<OnBoardingControllerImpl> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white70,
                child: const CustomSliderOnboarding(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnboarding(),
                  SizedBox(
                    height: 60,
                  ),
                  CustomButtonLanguge(
                    onpressed: () {
                      controller.next();
                    },
                    textonbutton: "Continue",
                  )
                  // CustomButtonOnboarding()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
