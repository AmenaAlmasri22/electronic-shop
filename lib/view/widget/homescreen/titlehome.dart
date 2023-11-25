import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Text(title,
          style: const TextStyle(
            //  height: 10,
            fontSize: 25,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sevillana',
          )),
    );
  }
}
