// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/widget.dart';

import '../../Drawer/drawer.dart';
import '../../config/navigation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      endDrawer: SafeArea(
        child: drawerWidget(
          context: context,
          onItem: (item) => navigation(
            context: context,
            pageName: item,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.7,
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
