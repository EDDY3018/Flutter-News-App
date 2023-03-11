// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: 0,
                child: GridView.builder(
                  itemCount: 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return const HomeHeader();
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: 5,
                  itemBuilder: ((context, index) => Cartegories())),
            )
          ],
        ),
      ),
    );
  }
}
