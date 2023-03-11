// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
              itemBuilder: (context, index) {
                return const HomeHeader();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 1,
                itemBuilder: ((context, index) => Cartegories())),
          ),
        ],
      ),
    );
  }
}
