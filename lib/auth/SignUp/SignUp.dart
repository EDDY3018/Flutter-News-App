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
      backgroundColor: BLACK,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SIGN IN',
                style: TextStyle(
                    color: WHITE, fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              // fullname textfield
              MyTextField(
                controller: fullnameController,
                hintText: 'Full Name',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 20),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 20),

              // phone number textfield
              MyTextField(
                controller: phoneNumberController,
                hintText: 'Phone Number',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 20),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),

              const SizedBox(height: 20),

              // password textfield
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: false,
                color: const Color.fromARGB(255, 250, 248, 248),
              ),
              const SizedBox(height: 35),
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
              Text(
                'OR',
                style: TextStyle(
                  color: WHITE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //already a member! Sign in

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: WHITE,
                        image: DecorationImage(image: NetworkImage('url')),
                      ),
                      // child: Image(image: Ima),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 60,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE,
                    ),
                    // child: Image(image: Ima),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member!',
                    style: TextStyle(color: WHITE),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
