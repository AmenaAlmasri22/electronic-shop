// ignore_for_file: avoid_print, depend_on_referenced_packages, unused_local_variable
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/functions/handlingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/auth/signindata.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';

abstract class SignInController extends GetxController {
  signIn();
}

class SignInControllerImp extends SignInController {
  SinInData siginData = SinInData(Get.find());
  MyServices myServices = Get.find();
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.none;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      print(value);
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  signIn() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await siginData.postdata(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences
              .setString("id", response['data']['users_id']);
          String userid = myServices.sharedPreferences.getString("id")!;
          myServices.sharedPreferences
              .setString("username", response['data']['users_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['users_email']);
          myServices.sharedPreferences
              .setString("phone", response['data']['users_phone']);
          myServices.sharedPreferences.setString("step", "2");

          // FirebaseMessaging.instance.subscribeToTopic("users");
          // FirebaseMessaging.instance.subscribeToTopic("users${userid}");
          Get.offNamed(AppRoutes.sucsesssignup);
        }
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Email Or Password Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
