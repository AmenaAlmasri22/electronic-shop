// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/localization/changelocal.dart';

class TxtFormFforsigninup extends StatelessWidget {
  TxtFormFforsigninup(
      {super.key,
      required this.name,
      required this.path,
      this.mycontroller,
      required this.validate,
      this.ontapicon,
      this.isscuretext});
  final String path;
  final String name;
  final TextEditingController? mycontroller;
  final String? Function(String?) validate;
  final controllerr = Get.find<LocalController>();
  final void Function()? ontapicon;
  final bool? isscuretext;

  @override
  Widget build(BuildContext context) {
    var condtypefont =
        controllerr.myServices.sharedPreferences.getString("lang");
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Text(
        name,
        style: TextStyle(
            fontFamily: condtypefont == "ar" ? 'Harmattan' : 'PoiretOne',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 5,
      ),
      TextFormField(
        obscureText: isscuretext == null || isscuretext == false ? false : true,
        autovalidateMode: AutovalidateMode.disabled,
        validator: validate,
        controller: mycontroller,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: ontapicon,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  path,
                )),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    ]);
  }
}
