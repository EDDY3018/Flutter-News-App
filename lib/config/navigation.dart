import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/home_screen.dart';

import 'package:get/get.dart';

import '../auth/Login/login.dart';

void navigation({
  @required BuildContext? context,
  @required String? pageName,
}) {
  String page = pageName!.replaceAll(RegExp(' '), "");
  switch (page.toLowerCase()) {
    case "back":
      Get.back();
      break;
    case "login":
      Get.offAll(() => LoginPage(), transition: Transition.rightToLeft);
      break;
    case "homepage":
      Get.offAll(() => HomeScreen(), transition: Transition.rightToLeft);
      break;
    //   case "students":
    //     Get.to(() => Students(), transition: Transition.rightToLeft);
    //     break;
    //   case "departments":
    //     Get.to(() => Departments(), transition: Transition.rightToLeft);
    //     break;
    //   case "staff":
    //     Get.to(() => Staff(), transition: Transition.rightToLeft);
    //     break;
    //   case "parents":
    //     Get.to(() => Parents(), transition: Transition.rightToLeft);
    //     break;
    //   case "grade":
    //     Get.to(() => Grade(), transition: Transition.rightToLeft);
    //     break;
    //   case "subjects":
    //     Get.to(() => Subject(), transition: Transition.rightToLeft);
    //     break;
    //   case "payments":
    //     Get.to(() => Payments(), transition: Transition.rightToLeft);
    //     break;
    //   case "staffattendance":
    //     Get.to(() => MarkAttendance(), transition: Transition.rightToLeft);
    //     break;
    //   case "sendnotices":
    //     Get.to(() => Notice(), transition: Transition.rightToLeft);
    //     break;
    //   case "bills":
    //     Get.to(() => Bills(), transition: Transition.rightToLeft);
    //     break;
    //   case "library":
    //     Get.to(() => Library(), transition: Transition.rightToLeft);
    //     break;
    //   case "messaging":
    //     Get.to(() => Message(), transition: Transition.rightToLeft);
    //     break;
  }
}
