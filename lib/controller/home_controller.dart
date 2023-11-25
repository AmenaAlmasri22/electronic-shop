// ignore_for_file: overridden_fields, unused_import, depend_on_referenced_packages, avoid_print

import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/functions/handlingdatacontroller.dart';
import '../data/datasource/remote/auth/homedata.dart';

abstract class HomeController extends SearchMixController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat, String categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;
  String? lang;

  @override
  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List items = [];
  // List items = [];

  @override
  initialData() {
    // myServices.sharedPreferences.clear() ;
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    search = TextEditingController();
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoutes.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];

  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());

  // // searchData() async {
  // //   statusRequest = StatusRequest.loading;
  // //   var response = await homedata.searchData(search!.text);
  // //   print("=============================== Controller $response ");
  // //   statusRequest = handlingData(response);
  // //   if (StatusRequest.success == statusRequest) {
  // //     if (response['status'] == "success") {
  // //       listdata.clear();
  // //       List responsedata = response['data'];
  // //       listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
  // //     } else {
  // //       statusRequest = StatusRequest.failure;
  // //     }
  // //   }
  //   update();
  // }

  bool isSearch = false;
  TextEditingController? search;
  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

//   onSearchItems() {
//     isSearch = true;
//     searchData();
//     update();
//   }
}
