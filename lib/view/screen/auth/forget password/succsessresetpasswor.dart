// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constant/routes.dart';
import '../../../../core/localization/changelocal.dart';
import '../../../widget/language/custombuttonlanguage.dart';

class SuccsessResetPassWord extends StatelessWidget {
  const SuccsessResetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    var languagerequirement =
        controller.myServices.sharedPreferences.getString("lang");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                //Cairo
                "29".tr,
                style: TextStyle(
                    fontFamily:
                        languagerequirement == "ar" ? 'Cairo' : 'PoiretOne',
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 62, 3, 110)),
              ),
              Center(
                child: Lottie.network(
                    alignment: const Alignment(400, 400),
                    'https://assets1.lottiefiles.com/packages/lf20_Gd0sEnEEI1.json'),
              ),
              Text(
                //Cairo
                "31".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily:
                        languagerequirement == "ar" ? 'Cairo' : 'PoiretOne',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 62, 3, 110)),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButtonLanguge(
                onpressed: () {
                  Get.offAllNamed(AppRoutes.signin);
                },
                textonbutton: "2".tr,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
