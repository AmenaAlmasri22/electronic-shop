// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> oninit() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initalservicse() async {
  await Get.putAsync(() => MyServices().oninit());
}
