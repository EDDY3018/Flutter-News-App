// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../components/sign_up_button.dart';
import '../../components/my_textfield.dart';
import '../../specs/colors.dart';
import '../Login/login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // text editing controllers
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign user up method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
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
                'asset/images/logo.png',
                width: 168,
                height: 42,
              ),
              const SizedBox(height: 30),

              // You are welcome!
              const Text(
                'You are welcome!',
                style: TextStyle(
                  color: BLACK,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),

              // fullname textfield
              MyTextField(
                controller: fullnameController,
                hintText: 'Full Name',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 30),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 30),

              // phone number textfield
              MyTextField(
                controller: phoneNumberController,
                hintText: 'Phone Number',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 30),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 30),

              // password textfield
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 50),

              // sign Up button
              SignUpButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),

              const SizedBox(height: 20),

              const SizedBox(height: 5),

              //already a member! Sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member!',
                    style: TextStyle(color: BLACK),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color.fromARGB(255, 243, 207, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
