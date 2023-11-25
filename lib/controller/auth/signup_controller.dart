// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/signupdata.dart';

abstract class SignUpController extends GetxController {
  signup();
  gotosignin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  StatusRequest statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  signup() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.verificationcodesignup);
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
    // Get.offNamed(AppRoutes.verificationcodesignup);
  }

  @override
  gotosignin() {
    Get.offNamed(AppRoutes.signin);
  }
}
