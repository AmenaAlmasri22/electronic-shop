// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable, depend_on_referenced_packages

import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/constant/routes.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/localization/changelocal.dart';
import '../../widget/signin/backgroundraiveanimation.dart';
import '../../widget/signin/buttonsigninup.dart';
import '../../widget/signin/textabove.dart';
import '../../widget/signin/textbuttom.dart';
import '../../widget/signin/txtformfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var controllerrr = Get.find<LocalController>();
    var languagerequirement =
        controllerrr.myServices.sharedPreferences.getString("lang");
    SignUpControllerImp mycontroller = Get.put(SignUpControllerImp());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: WillPopScope(
          onWillPop: alertexitapp,
          child: GetBuilder<SignUpControllerImp>(
            builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Stack(
                children: [
                  const BackGroundRiveAnimation(),
                  Center(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: languagerequirement == "ar" ? 15 : 40, //ar
                          //  height: 50,//en
                        ),
                        TextAbove(
                            wlcmorelse: "5".tr,
                            high: languagerequirement == "en" ? 10 : 0, // 10
                            textsignupin: "9".tr,
                            signinup: "3".tr,
                            siize: languagerequirement == "en"
                                ? 50
                                : //en
                                40), //ar
                        Padding(
                          padding: EdgeInsets.only(
                            top: languagerequirement == "en" ? 20 : 0, //en
                            right: 20,
                            left: 20,
                          ),
                          child: Form(
                              key: controller.formstate,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TxtFormFforsigninup(
                                    mycontroller: controller.username,
                                    validate: (val) {
                                      return validinput(
                                          val!, 5, 100, "username");
                                    },
                                    name: "11".tr,
                                    path: SvgImage.username,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TxtFormFforsigninup(
                                      mycontroller: controller.email,
                                      name: "7".tr,
                                      path: SvgImage.email,
                                      validate: (val) {
                                        return validinput(
                                            val!, 5, 100, "email");
                                      }),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TxtFormFforsigninup(
                                      mycontroller: controller.phone,
                                      name: "12".tr,
                                      path: SvgImage.phone,
                                      validate: (val) {
                                        return validinput(
                                            val!, 5, 100, "phone");
                                      }),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TxtFormFforsigninup(
                                      mycontroller: controller.password,
                                      name: "8".tr,
                                      path: SvgImage.password,
                                      validate: (val) {
                                        return validinput(
                                            val!, 5, 100, "password");
                                      }),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: ButtonSignInUp(
                                          onpressed: //controller.signup
                                              () {
                                            controller.signup();
                                          },
                                          txtdirction:
                                              languagerequirement == "en"
                                                  ? TextDirection.rtl
                                                  : TextDirection.ltr,
                                          textonbutton: "3".tr)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextButtom(
                                    ask: "4".tr,
                                    signinup: "2".tr,
                                    inkwellpage: () {
                                      Get.offNamed(AppRoutes.signin);
                                    },
                                    widthsizedboxbottom:
                                        languagerequirement == "en" ? 60 : 65,
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
/// mycontroller.signup()