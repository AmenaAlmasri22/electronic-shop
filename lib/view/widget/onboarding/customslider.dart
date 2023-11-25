// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (value) => controller.onpagechanged(value),
        itemCount: onboardinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onboardinglist[i].titel!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: 'Sevillana',
                      color: Color.fromARGB(255, 62, 3, 110)),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: sort_child_properties_last
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    onboardinglist[i].image!,
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    onboardinglist[i].body!,
                    style: const TextStyle(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'PoiretOne',
                        color: Color.fromARGB(255, 7, 0, 0)),
                  ),
                ),
              ],
            ));
  }
}
