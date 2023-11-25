// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/verifycode_controller.dart';
//import '../../../widget/signin/backgroundraiveanimation.dart';
import '../../../widget/signin/textabove.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    //var controller = Get.find<LocalController>();
    //  var languagerequirement =
    //    controller.myServices.sharedPreferences.getString("lang");
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //  const BackGroundRiveAnimation(),
          Center(
            child: ListView(children: [
              const SizedBox(
                height: 50,
              ),
              TextAbove(
                wlcmorelse: "17".tr,
                textsignupin: "13".tr,
                signinup: "18".tr,
                high: 10,
                siize: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    OtpTextField(
                      fieldWidth: 55,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,

                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.gotoresetpassword();
                      }, // end onSubmit
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
