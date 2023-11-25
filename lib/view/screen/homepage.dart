// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imageassets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/homescreen/discountbanner.dart';
import '../widget/homescreen/header.dart';
import '../widget/homescreen/listctegories.dart';
import '../widget/homescreen/listitems.dart';
import '../widget/homescreen/titlehome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.numOfitem = 1});
  final int numOfitem;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Container(
        // color: Colors.grey[300],
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: ListView(shrinkWrap: true, children: [
              Column(
                children: [
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          HomeHeader(),
                          DiscountBanner(),
                          CustomTitleHome(title: "Categories"),
                          ListCategoriesHome(),
                          CustomTitleHome(title: "Product for you"),
                          ListItemsHome(),
                          CustomTitleHome(title: "speical offers"),
                          ListItemsHome(),
                        ],
                      ))
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
