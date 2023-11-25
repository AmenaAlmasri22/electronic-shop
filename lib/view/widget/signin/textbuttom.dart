// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/localization/changelocal.dart';

// ignore: must_be_immutable
class TextButtom extends StatelessWidget {
  TextButtom({
    super.key,
    required this.ask,
    required this.signinup,
    this.inkwellpage,
    this.widthsizedboxbottom,
  });
  final String ask;
  final String signinup;
  void Function()? inkwellpage;
  final double? widthsizedboxbottom;
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocalController>();
    var languagerequirement =
        controller.myServices.sharedPreferences.getString("lang");
    return Center(
      child: Row(
        textDirection:
            languagerequirement == "en" ? TextDirection.rtl : TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: languagerequirement == "en" ? 10 : 0,
          ),
          InkWell(
            onTap: inkwellpage,
            child: Text(signinup,
                style: const TextStyle(
                    fontFamily: 'PoiretOne',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink)),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(ask,
              style: const TextStyle(
                fontFamily: 'PoiretOne',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(width: widthsizedboxbottom
              //    languagerequirement == "en" ? 42 : 65, //en
              )
        ],
      ),
    );
  }
}
