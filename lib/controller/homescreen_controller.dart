// ignore_for_file: unnecessary_import, depend_on_referenced_packages, avoid_renaming_method_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/homepage.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    // NotificationView()
    //  ,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("notification"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Profile"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("setting"))],
    ),
    //  Settings()
  ];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "n", "icon": Icons.notifications_active_outlined},
    {"title": "profile", "icon": Icons.person_pin_sharp},
    {"title": "settings", "icon": Icons.settings}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
