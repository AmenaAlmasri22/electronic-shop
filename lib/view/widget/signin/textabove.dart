// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, must_be_immutable, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/localization/changelocal.dart';

class TextAbove extends StatefulWidget {
  TextAbove(
      {super.key,
      required this.textsignupin,
      required this.signinup,
      required this.siize,
      this.high,
      required this.wlcmorelse});
  String textsignupin;
  String signinup;
  double siize;
  double? high;
  String wlcmorelse;
  @override
  State<TextAbove> createState() => _TextAboveState();
}

class _TextAboveState extends State<TextAbove> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    var languagerequirement =
        controller.myServices.sharedPreferences.getString("lang");
    return Column(
      children: [
        Text(
          //Cairo
          widget.signinup,
          style: TextStyle(
              fontFamily: languagerequirement == "ar" ? 'Cairo' : 'Sevillana',
              fontSize: widget.siize,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 62, 3, 110)),
        ),
        SizedBox(
          height: widget.high,
        ),
        Text(
          widget.wlcmorelse,
          // "Welcome Back".tr,
          style: TextStyle(
              fontFamily:
                  languagerequirement == "ar" ? 'Harmattan' : 'PoiretOne',
              fontSize: //20//en
                  25, //ar
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: widget.high,
        ),
        Text(
          widget.textsignupin.tr,
          style: TextStyle(
              fontFamily:
                  languagerequirement == "ar" ? 'Harmattan' : 'PoiretOne',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 60, 3, 121)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
