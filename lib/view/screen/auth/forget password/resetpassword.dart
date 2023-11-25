// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constant/imageassets.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/language/custombuttonlanguage.dart';
import '../../../widget/signin/textabove.dart';
import '../../../widget/signin/txtformfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp mycontroller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //   const BackGroundRiveAnimation(),
          Center(
            child: ListView(children: [
              const SizedBox(
                height: 50,
              ),
              TextAbove(
                wlcmorelse: "21".tr,
                textsignupin: "22".tr,
                signinup: "20".tr,
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
                        mycontroller: mycontroller.password,
                        name: "24".tr,
                        path: SvgImage.password,
                        validate: (val) {
                          return validinput(val!, 5, 100, "email");
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    TxtFormFforsigninup(
                        mycontroller: mycontroller.repassword,
                        name: "25".tr,
                        path: SvgImage.password,
                        validate: (val) {
                          return validinput(val!, 5, 100, "email");
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: CustomButtonLanguge(
                        textonbutton: "23".tr,
                        onpressed: () {
                          mycontroller.gotosucsessresetpassword();
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
