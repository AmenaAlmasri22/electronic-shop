// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class BackGroundRiveAnimation extends StatelessWidget {
  const BackGroundRiveAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          bottom: 200,
          left: 100,
          width: MediaQuery.of(context).size.width * 1.7,
          child: Image.asset("assets/Backgrounds/Spline.png")),
      const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
      Positioned.fill(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
        child: const SizedBox(),
      )),
      Positioned.fill(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: const SizedBox(),
      ))
    ]);
  }
}
