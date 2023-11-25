// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  gotosucsessresetpassword();
  resetpassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  gotosucsessresetpassword() {
    Get.offNamed(AppRoutes.sucsessresetpassword);
  }

  @override
  resetpassword() {}
}
