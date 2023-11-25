// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:ecommercecourse/controller/homescreen_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/homescreen/custombottomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
