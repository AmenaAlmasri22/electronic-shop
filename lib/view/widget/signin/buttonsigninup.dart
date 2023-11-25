// ignore_for_file: unnecessary_import, must_be_immutable, depend_on_referenced_packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ButtonSignInUp extends StatefulWidget {
  ButtonSignInUp({
    super.key,
    required this.textonbutton,
    this.txtdirction,
    required this.onpressed,
  });
  final String textonbutton;
  final TextDirection? txtdirction;
  void Function()? onpressed;
  @override
  State<ButtonSignInUp> createState() => _ButtonSignInUpState();
}

class _ButtonSignInUpState extends State<ButtonSignInUp> {
  late RiveAnimationController _btnanimationcontroller;

  @override
  void initState() {
    _btnanimationcontroller = OneShotAnimation("active", autoplay: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _btnanimationcontroller.isActive = true;
        widget.onpressed!();
      },
      child: SizedBox(
        child: Stack(
          children: [
            SizedBox(
                height: 64,
                width: 260,
                child: RiveAnimation.asset(
                  "assets/RiveAssets/button.riv",
                  controllers: [_btnanimationcontroller],
                )),
            Positioned.fill(
              top: 8,
              child: Row(
                textDirection: widget.txtdirction,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.textonbutton,
                      style: const TextStyle(
                          fontFamily: 'PoiretOne',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 62, 3, 110))),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.pink,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
