import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.thirdColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width * 0.6,
      height: 50,
      child: const TextField(
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search, color: AppColor.purple),
            contentPadding: EdgeInsets.only(left: 20, top: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "search product...",
            hintStyle: TextStyle(
              fontSize: 20,
              fontFamily: 'PoiretOne',
              color: Color.fromARGB(255, 237, 66, 123),
            )),
      ),
    );
  }
}
