// ignore_for_file: missing_required_param, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mvvm_news_app/screens/home_screen.dart';
import '../../components/button.dart';
import '../../components/my_textfield.dart';
import '../../specs/colors.dart';
import '../Forgotten/ForgottPass.dart';
import '../SignUp/SignUp.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                'asset/images/logo.png',
                width: 168,
                height: 42,
              ),
              const SizedBox(height: 50),

              // welcome back, you've been missed!
              const Text(
                'Welcome',
                style: TextStyle(
                  color: WHITE,
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                color: GREY,
              ),

              const SizedBox(height: 30),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                color: GREY,
              ),

              const SizedBox(height: 20),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: GREY),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 37),

              // sign in button
              button(
                  height: 62,
                  divideWidth: 0.8,
                  borderRadiusGeometry: BorderRadius.circular(15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }),
                  text: 'Sign In',
                  textStyle: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  color: GREY,
                  context: context),

              const SizedBox(height: 14),
              const SizedBox(height: 3),

              // not a member? sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: WHITE),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        color: GREY,
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
