// ignore_for_file: depend_on_referenced_packages

import 'package:ecommercecourse/core/services/services.dart';
import 'package:get/get.dart';

translateDatabase(columnar, columnen) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return columnar;
  } else {
    return columnen;
  }
}
