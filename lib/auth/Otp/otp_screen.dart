// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../components/size.dart';
import '../../specs/colors.dart';
import 'components/otp_form.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({super.key});

  get headingStyle => null;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("OTP Verification",
            style: TextStyle(
              color: WHITE,
            )),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                    color: BLACK,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  "We sent your code to +233 54 113  ***",
                  style: TextStyle(color: BLACK),
                ),
                buildTimer(),
                const OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: const Text(
                    "Resend OTP Code",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: BLACK,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "This code will expired in ",
          style: TextStyle(color: WHITE),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
