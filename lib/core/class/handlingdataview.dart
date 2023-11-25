import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:lottie/lottie.dart';

import '../constant/imageassets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AssestLottie.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child:
                    Lottie.asset(AssestLottie.offline, width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AssestLottie.server,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AssestLottie.nodata,
                            width: 250, height: 250, repeat: true))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AssestLottie.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child:
                    Lottie.asset(AssestLottie.offline, width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AssestLottie.server,
                        width: 250, height: 250))
                : widget;
  }
}
