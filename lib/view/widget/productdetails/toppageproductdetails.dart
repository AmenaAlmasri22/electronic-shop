import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/items_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productdetails_controller.dart';

class TopProductPageDetails extends GetView<ItemsControllerImp> {
  const TopProductPageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(color: AppColor.secondColor),
        ),
        Positioned(
            top: 30.0,
            right: Get.width / 8,
            left: Get.width / 8,
            child: Hero(
              tag: "1", //${controller.itemsModel.itemsId}
              child: CachedNetworkImage(
                imageUrl:
                    "${LinkApp.imageitems}/laptop.png", //${controller.itemsModel.itemsImage!}
                height: 250,
                fit: BoxFit.fill,
              ),
            ))
      ],
    );
  }
}
