// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {super.key,
      required this.svgSrc,
      required this.numOfitem,
      required this.press});
  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: AppColor.thirdColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc, color: AppColor.purple),
          ),
          Positioned(
            right: 0,
            top: -1,
            child: numOfitem != 0
                ? Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFF4848),
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.white)),
                    child: Center(
                      child: Text(
                        "$numOfitem",
                        style: const TextStyle(
                          fontSize: 10,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Container(),
          )
        ],
      ),
    );
  }
}
