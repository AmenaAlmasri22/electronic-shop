// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signin_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/constant/routes.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/localization/changelocal.dart';
import '../../widget/signin/backgroundraiveanimation.dart';
import '../../widget/signin/buttonsigninup.dart';
import '../../widget/signin/textbuttom.dart';
import '../../widget/signin/textabove.dart';
import '../../widget/signin/txtformfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    var languagerequirement =
        controller.myServices.sharedPreferences.getString("lang");
    SignInControllerImp mycontroller = Get.put(SignInControllerImp());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: WillPopScope(
            onWillPop: alertexitapp,
            child: GetBuilder<SignInControllerImp>(builder: (controller) {
              return HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Form(
                  key: mycontroller.formstate,
                  child: Stack(
                    children: [
                      const BackGroundRiveAnimation(),
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            TextAbove(
                              wlcmorelse: "5".tr,
                              textsignupin: "6".tr,
                              signinup: "2".tr,
                              siize: languagerequirement == "ar" ? 40 : 50,
                              high: 10,
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
                                      mycontroller: mycontroller.email,
                                      validate: (val) {
                                        return validinput(
                                            val!, 6, 100, "email");
                                      },
                                      name: "7".tr,
                                      path: SvgImage.email,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    GetBuilder<SignInControllerImp>(
                                      builder: (controller) =>
                                          TxtFormFforsigninup(
                                        isscuretext: controller.isshowpassword,
                                        ontapicon: () {
                                          controller.showpassword();
                                        },
                                        mycontroller: mycontroller.password,
                                        validate: (val) {
                                          return validinput(
                                              val!, 5, 100, "password");
                                        },
                                        name: "8".tr,
                                        path: SvgImage.password,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.offNamed(AppRoutes.forgetpassword);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 197,
                                          top: 20,
                                        ),
                                        child: Text("15".tr,
                                            style: const TextStyle(
                                                fontFamily: 'PoiretOne',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: ButtonSignInUp(
                                            onpressed: () {
                                              mycontroller.signIn();
                                            },
                                            txtdirction:
                                                languagerequirement == "en"
                                                    ? TextDirection.rtl
                                                    : TextDirection.ltr,
                                            textonbutton: "2".tr)),
                                  ],
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      languagerequirement == "ar" ? 55 : 8, //ar
                                  // width: 8,//en
                                ),
                                Center(
                                  child: TextButtom(
                                    ask: "28".tr,
                                    signinup: "3".tr,
                                    inkwellpage: () =>
                                        Get.offNamed(AppRoutes.signup),
                                    widthsizedboxbottom:
                                        languagerequirement == "en" ? 42 : 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })));
  }
}
