// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageassets.dart';
import '../../../core/localization/changelocal.dart';
import 'fadeanimation.dart';

class CustomFadedeImages extends StatelessWidget {
  const CustomFadedeImages({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    var languagerequirement =
        controller.myServices.sharedPreferences.getString("lang");
    return Container(
        height: 500,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssestImage.background), fit: BoxFit.fill)),
        child: Stack(children: <Widget>[
          Positioned(
            left: 30,
            width: 80,
            height: 200,
            child: FadeAnimation(
                1,
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssestImage.light1))),
                )),
          ),
          Positioned(
            left: 140,
            width: 80,
            height: 150,
            child: FadeAnimation(
                1.3,
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssestImage.light2))),
                )),
          ),
          Positioned(
            right: 40,
            top: 40,
            width: 80,
            height: 150,
            child: FadeAnimation(
                1.5,
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssestImage.clock))),
                )),
          ),
          Positioned(
              child: Container(
            margin: const EdgeInsets.only(top: 90, left: 30, right: 20),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "27".tr,
                style: TextStyle(
                    fontFamily:
                        languagerequirement == "ar" ? 'Cairo' : 'Sevillana',
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
        ]));
  }
}
