// ignore_for_file: avoid_unnecessary_containers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/localization/changelocal.dart';
import '../widget/language/custombuttonlanguage.dart';
import '../widget/language/customfadeedimages.dart';
import '../widget/language/fadeanimation.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageeState();
}

class _LanguageeState extends State<Language> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: <Widget>[
          const CustomFadedeImages(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                FadeAnimation(
                    1.8,
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: const <Widget>[],
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    2,
                    CustomButtonLanguge(
                      textonbutton: "Enlish",
                      onpressed: () {
                        controller.changelang("en");
                        Get.offNamed(AppRoutes.onbording);
                      },
                    )),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    2,
                    CustomButtonLanguge(
                      textonbutton: "Arabic",
                      onpressed: () {
                        controller.changelang("ar");
                        Get.offNamed(AppRoutes.onbording);
                      },
                    )),
              ],
            ),
          )
        ]))));
  }
}
