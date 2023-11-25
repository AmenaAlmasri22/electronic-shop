// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unused_import, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  check_code();
  gotosucsesssignup();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  @override
  check_code() {}

  @override
  gotosucsesssignup() {
    Get.offAllNamed(AppRoutes.sucsesssignup);
  }
}
