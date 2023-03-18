// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_news_app/auth/Login/login.dart';
import 'package:flutter_news_app/auth/SignUp/SignUp.dart';
import 'package:flutter_news_app/components/button.dart';
import 'package:flutter_news_app/screens/Home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../specs/colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(350),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(130, 76, 175, 79),
                  image: DecorationImage(
                    image: AssetImage('assets/splash.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Skip',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: WHITE,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Divider(
              height: 40,
              color: Color.fromARGB(130, 76, 175, 79),
              thickness: 3,
              endIndent: 400,
              indent: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        'Explore and follow topics \nrelevant to you ',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: BLACK,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Created with curated content on thousands of topics from \nworld-renowed podcasts,local outlets and the community ',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 130),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: ElevatedButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage())),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(180, 65),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              )),
                        ),
                        SizedBox(width: 27),
                        button(
                          divideWidth: 0.4,
                          height: 65,
                          buttonRadius: 30,
                          textColor: WHITE,
                          color: BLACK,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          text: 'Get Started',
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: BLACK),
                          context: context,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
button(
                            divideWidth: 0.4,
                            height: 65,
                            buttonRadius: 30,
                            textColor: BLACK,
                            border: Border.all(
                              color: BLACK,
                              width: 5,
                            ),
                            color: Color.fromARGB(255, 248, 245, 245),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            text: 'Login',
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: BLACK),
                            context: context,
                          ),
*/