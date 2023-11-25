// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/forgetpassword_controller.dart';
import '../../../../core/constant/imageassets.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/language/custombuttonlanguage.dart';
import '../../../widget/signin/textabove.dart';
import '../../../widget/signin/txtformfield.dart';

class ForgetPasswod extends StatelessWidget {
  const ForgetPasswod({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp mycontroller =
        Get.put(ForgetPasswordControllerImp());
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
                wlcmorelse: "14".tr,
                textsignupin: "13".tr,
                signinup: "15".tr,
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
                    TxtFormFforsigninup(
                        name: "7".tr,
                        path: SvgImage.email,
                        validate: (val) {
                          return validinput(val!, 5, 100, "email");
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: CustomButtonLanguge(
                        textonbutton: "19".tr,
                        onpressed: () {
                          mycontroller.gotoverifycode();
                        },
                      ),
                    )
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
