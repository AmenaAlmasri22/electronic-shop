// ignore_for_file: depend_on_referenced_packages

import 'package:ecommercecourse/controller/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import 'custombuttonappbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => CurvedNavigationBar(
                height: 50,
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                index: controller.currentpage,
                color: AppColor.thirdColor.withOpacity(0.3),
                items: [
                  CustomButtonAppBar(
                    icondata: controller.bottomappbar[0]['icon'],
                    active: controller.currentpage == 0 ? true : false,
                    onPressed: () {
                      controller.changePage(0);
                    },
                    textbutton: controller.bottomappbar[0]['title'],
                  ),
                  CustomButtonAppBar(
                    icondata: controller.bottomappbar[1]['icon'],
                    active: controller.currentpage == 1 ? true : false,
                    onPressed: () {
                      controller.changePage(1);
                    },
                    textbutton: controller.bottomappbar[1]['title'],
                  ),
                  CustomButtonAppBar(
                    icondata: controller.bottomappbar[2]['icon'],
                    active: controller.currentpage == 2 ? true : false,
                    onPressed: () {
                      controller.changePage(2);
                    },
                    textbutton: controller.bottomappbar[2]['title'],
                  ),
                  CustomButtonAppBar(
                    icondata: controller.bottomappbar[3]['icon'],
                    active: controller.currentpage == 3 ? true : false,
                    onPressed: () {
                      controller.changePage(3);
                    },
                    textbutton: controller.bottomappbar[3]['title'],
                  ),
                ]
                // child: Container(
                //   color: AppColor.thirdColor.withOpacity(0.3),
                //   child: Row(
                //     children: [
                //       ...List.generate(controller.listPage.length, ((index) {
                //         return CustomButtonAppBar(
                //             textbutton: controller.bottomappbar[index]['title'],
                //             icondata: controller.bottomappbar[index]['icon'],
                //             onPressed: () {
                //               controller.changePage(index);
                //             },
                //             active: controller.currentpage == index ? true : false);
                //       }))
                //     ],
                //   ),
                // )));
                ));
  }
}
