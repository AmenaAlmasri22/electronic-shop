// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changelang(String codelang) {
    Locale locale = Locale(codelang);
    myServices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedlang = myServices.sharedPreferences.getString("lang");
    if (sharedlang == "ar") {
      language = const Locale("ar");
    } else if (sharedlang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
