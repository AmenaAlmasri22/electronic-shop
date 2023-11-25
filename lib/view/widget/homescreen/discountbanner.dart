import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            gradient: const SweepGradient(colors: [
              Color.fromRGBO(143, 148, 251, 1),
              Color.fromRGBO(143, 148, 251, .6),
            ], tileMode: TileMode.mirror, startAngle: 5, endAngle: 6),
            color: AppColor.purple,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.all(10),
        //   padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        //   decoration: BoxDecoration(
        //       color: const Color.fromARGB(255, 142, 0, 182).withOpacity(0.3),
        //       borderRadius: BorderRadius.circular(20)),
        //   height: 100,
        //   width: double.infinity,
        // ),
        const Positioned(
          top: 35,
          left: 30,
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'PoiretOne',
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(text: "A Summer Surpise\n"),
                TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(
                    fontFamily: 'Sevillana',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
