import 'package:flutter/material.dart';

class CustomButtonLanguge extends StatefulWidget {
  const CustomButtonLanguge(
      {super.key,
      required this.textonbutton,
      this.txtdirction,
      this.onpressed});

  @override
  State<CustomButtonLanguge> createState() => _CustomButtonLangugeState();
  final String textonbutton;
  final TextDirection? txtdirction;
  final void Function()? onpressed;
}

class _CustomButtonLangugeState extends State<CustomButtonLanguge> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(143, 148, 251, 1),
              Color.fromRGBO(143, 148, 251, .6),
            ])),
        child: Center(
          child: Text(
            widget.textonbutton,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'PoiretOne',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
