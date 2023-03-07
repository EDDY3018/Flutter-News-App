import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../components/my_textfield.dart';
import '../../specs/colors.dart';
import '../Otp/otp_screen.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: WHITE,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5),

              // logo
              Image.asset(
                'assets/eventzlogo.png',
                width: 168,
                height: 42,
              ),
              const SizedBox(height: 30),

              // You are welcome!
              const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 248, 248),
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),
              const Text(
                'Please Enter your Phoner number\n to reset Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 248, 248),
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),

              // phone number textfield
              MyTextField(
                controller: phoneNumberController,
                hintText: 'Phone Number',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 100),

              // sign Up button
              button(
                  height: 62,
                  divideWidth: 0.8,
                  borderRadiusGeometry: BorderRadius.circular(15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                  onPressed: (() {
                    Navigator.push(
                      context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => OtpScreen()),
                    );
                  }),
                  text: 'Continue',
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  color: const Color.fromARGB(255, 2, 91, 24),
                  context: context),
            ],
          ),
        ),
      ),
    );
  }
}
