// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.network(
          alignment: const Alignment(400, 400),
          'https://assets1.lottiefiles.com/packages/lf20_Gd0sEnEEI1.json'),
    ));
  }
}
