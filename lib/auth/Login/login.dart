// ignore_for_file: missing_required_param, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/widget.dart';
import 'package:flutter_news_app/screens/Home/allNews.dart';
import 'package:flutter_news_app/screens/Home/home_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  color: WHITE,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
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

              const SizedBox(height: 20),

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
                    color: BLACK,
                  ),
                  color: WHITE,
                  context: context),
              const SizedBox(height: 30),
              Text(
                'OR',
                style: TextStyle(
                  color: WHITE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: BLACK,
                          image: DecorationImage(
                              image: AssetImage('assets/apple.png')),
                        ),
                        // child: Image(image: Ima),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: BLACK,
                        image: DecorationImage(
                            image: AssetImage('assets/google.jpg')),
                      ),
                      // child: Image(image: Ima),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
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
                        color: YELLOW,
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
