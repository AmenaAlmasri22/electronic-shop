// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages
import 'package:ecommercecourse/view/screen/auth/forget%20password/forgetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/forget%20password/resetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/forget%20password/succsessresetpasswor.dart';
import 'package:ecommercecourse/view/screen/auth/forget%20password/verificationcode.dart';
import 'package:ecommercecourse/view/screen/auth/forget%20password/verificationcodesignup.dart';
import 'package:ecommercecourse/view/screen/auth/signin.dart';
import 'package:ecommercecourse/view/screen/auth/signup.dart';
import 'package:ecommercecourse/view/screen/auth/sucsess_signup.dart';
import 'package:ecommercecourse/view/screen/homepage.dart';
import 'package:ecommercecourse/view/screen/items.dart';
import 'package:ecommercecourse/view/screen/language.dart';
import 'package:ecommercecourse/view/screen/onbording.dart';
import 'package:ecommercecourse/view/screen/productdetails.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.signin, page: () => const SignIn()),
  GetPage(name: AppRoutes.forgetpassword, page: () => const ForgetPasswod()),
  GetPage(name: AppRoutes.language, page: () => const Language()),
  GetPage(name: AppRoutes.signup, page: () => const SignUp()),
  GetPage(
      name: AppRoutes.verificationcode, page: () => const VerificationCode()),
  GetPage(name: AppRoutes.resetpassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.sucsessresetpassword,
      page: () => const SuccsessResetPassWord()),
  GetPage(name: AppRoutes.sucsesssignup, page: () => const SuccsessSignUp()),
  GetPage(name: AppRoutes.onbording, page: () => const Onboarding()),
  GetPage(
      name: AppRoutes.verificationcodesignup,
      page: () => const VerificationCodeSignUp()),
  GetPage(name: AppRoutes.homepage, page: () => const HomePage()),
  GetPage(name: AppRoutes.items, page: () => const Items()),
  GetPage(name: AppRoutes.productdetails, page: () => const ProductDetails()),
];

// Map<String, Widget Function(BuildContext)> routess = {
//   AppRoutes.signin: (Context) => const SignIn(),
//   AppRoutes.forgetpassword: (Context) => const ForgetPasswod(),
//   AppRoutes.language: (Context) => const Language(),
//   AppRoutes.signup: (Context) => const SignUp(),
//   AppRoutes.verificationcode: (Context) => const VerificationCode(),
//   AppRoutes.resetpassword: (Context) => const ResetPassword(),
//   AppRoutes.sucsessresetpassword: (Context) => const SuccsessResetPassWord(),
//   AppRoutes.sucsesssignup: (Context) => const SuccsessSignUp(),
//   AppRoutes.onbording: (Context) => const Onboarding(),
//   AppRoutes.verificationcodesignup: (Context) => const VerificationCodeSignUp(),
// };
