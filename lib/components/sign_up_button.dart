// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mvvm_news_app/specs/colors.dart';

class SignUpButton extends StatelessWidget {
  final Function()? onTap;

  const SignUpButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 350,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: WHITE,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: BLACK,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
