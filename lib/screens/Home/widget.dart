// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/home_screen.dart';
import 'package:flutter_news_app/screens/Home/allNews.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../specs/colors.dart';
import '../Technology/technology_screen.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore today's \nworld News",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: BLUEBLACK,
                            fontSize: 27,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 69),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          iconSize: 40,
                          color: BLACK,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search here',
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                filled: true,
                fillColor: Colors.grey.shade200,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 40,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cartegories extends StatelessWidget {
  const Cartegories({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.42,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeForAll()));
                      },
                      child: Container(
                        width: 300,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 4, 10, 52),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                7,
                              ), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/tech.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Text(
                                'Tecnology',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: WHITE,
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 4, 10, 52),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(
                              0,
                              7,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/sports.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              'Sports',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: WHITE,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 4, 10, 52),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(
                              0,
                              7,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/health.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              'Health',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: WHITE,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 4, 10, 52),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                7,
                              ), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/sci.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              'Science',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: WHITE,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest News',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: BLACK,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: BLACK,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                    )),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 390,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 1, 1),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/L1.JPG')),
              ),
            ),
          ],
        ),
      ],
    );
  }
}




/*
 SizedBox(
                      height: 5,
                    ),
                    Text(
                      'data',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: BLUE,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),



                    Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            image: DecorationImage(
                              image: AssetImage('assets/carrer.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
*/

