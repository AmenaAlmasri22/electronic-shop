// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unused_import, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  check_code();
  gotoresetpassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  @override
  check_code() {}

  @override
  gotoresetpassword() {
    Get.offNamed(AppRoutes.resetpassword);
  }
}
