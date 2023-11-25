// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:ecommercecourse/routes.dart';
import 'package:ecommercecourse/test.dart';
import 'package:ecommercecourse/view/screen/homepage.dart';
import 'package:ecommercecourse/view/screen/homescreen.dart';
import 'package:ecommercecourse/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initialbindings.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalservicse();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
        initialBinding: InitialBindings(),
        translations: MyTranslation(),
        locale: controller.language,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        getPages: routes);
  }
}
