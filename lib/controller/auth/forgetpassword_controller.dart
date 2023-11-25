// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  forgetpassword();
  gotoverifycode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  forgetpassword() {}

  @override
  gotoverifycode() {
    Get.offNamed(AppRoutes.verificationcode);
  }
}
