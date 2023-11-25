// ignore_for_file: file_names, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages

//import 'dart:math';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import 'core/constant/imageassets.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);

//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   late LiquidController liquidController;
//   int currentPage = 0;
//   final List<Map<String, dynamic>> splashData = [
//     {
//       "title": "Best Digital Solution",
//       "subtitle":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
//       "image": "assets/images/boarding1.png",
//       "color": const Color(0xFF8CC6FB)
//     },
//     {
//       "title": "Get Experience",
//       "subtitle":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
//       "image": "assets/images/boarding2.png",
//       "color": const Color(0xFF5F939A)
//     },
//     {
//       "title": "Application\nMedia",
//       "subtitle":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
//       "image": "assets/images/boarding3.png",
//       "color": const Color(0xFFDA6386)
//     },
//   ];

//   @override
//   void initState() {
//     liquidController = LiquidController();
//     super.initState();
//   }

//   Widget _buildDot(int index) {
//     double selectedness = Curves.easeOut.transform(
//       max(
//         0.0,
//         1.0 - ((currentPage) - index).abs(),
//       ),
//     );
//     double zoom = 1.0 + (2.0 - 1.7) * selectedness;
//     return Container(
//       width: 25.0,
//       child: Center(
//         child: Material(
//           color: const Color(0xFF5545aa),
//           type: MaterialType.circle,
//           child: Container(
//             width: 8.0 * zoom,
//             height: 8.0 * zoom,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           LiquidSwipe.builder(
//             itemCount: splashData.length,
//             itemBuilder: (context, index) {
//               return getOnBoardingScreen(index);
//             },
//             positionSlideIcon: 0.8,
//             onPageChangeCallback: pageChangeCallback,
//             waveType: WaveType.liquidReveal,
//             liquidController: liquidController,
//             fullTransitionValue: 880,
//             enableLoop: true,
//             ignoreUserGestureWhileAnimating: true,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: <Widget>[
//                 const Expanded(child: SizedBox()),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List<Widget>.generate(splashData.length, _buildDot),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget getOnBoardingScreen(int index) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Image.asset(splashData[index]['image']!),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   splashData[index]['title']!,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Color(0xFF5545aa),
//                     fontFamily: "Billy",
//                     fontSize: 27,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   splashData[index]['subtitle']!,
//                   style: const TextStyle(
//                       color: Colors.grey,
//                       fontFamily: "Billy",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16.0),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 ButtonTheme(
//                   height: 50,
//                   minWidth: 150,
//                   child: OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       shape: const StadiumBorder(),
//                       side: const BorderSide(
//                         width: 2,
//                         color: Color(0xFF5545aa),
//                       ),
//                     ),
//                     child: Text(
//                       index != splashData.length - 1 ? 'Skip' : 'Get Started',
//                       style: const TextStyle(
//                           color: Color(0xFF5545aa),
//                           fontSize: 18,
//                           fontFamily: "Billy",
//                           fontWeight: FontWeight.bold),
//                     ),
//                     onPressed: () {
//                       index != splashData.length - 1
//                           ? liquidController.jumpToPage(
//                               page: splashData.length - 1)
//                           : liquidController.jumpToPage(page: 0);
//                     },
//                     //  borderSide: const BorderSide(color: Color(0xFF5545aa)),
//                     //   textColor: Colors.white,
//                     //        shape: RoundedRectangleBorder(
//                     //   borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   pageChangeCallback(int currentPage) {
//     setState(() {
//       this.currentPage = currentPage;
//     });
//   }
// }
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 246, 246),
      body: Container(
        height: 800,
        //   width: 200,
        child: Center(
          child: Lottie.asset(AssestLottie.server),
        ),
      ),
    );
  }
}
