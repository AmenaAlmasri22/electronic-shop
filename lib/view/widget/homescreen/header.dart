import 'package:ecommercecourse/view/widget/homescreen/searchfield.dart';
import 'package:flutter/material.dart';

import 'iconbtnwithcounter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const SizedBox(
            width: 9,
          ),
          const SearchField(),
          const SizedBox(
            width: 3,
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/cart.svg",
            press: () {},
            numOfitem: 1,
          ),
          const SizedBox(
            width: 3,
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
