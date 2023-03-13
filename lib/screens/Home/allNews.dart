import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/General%20News/general_screen.dart';
import 'package:flutter_news_app/screens/Health/health_screen.dart';
import 'package:flutter_news_app/screens/Science/science_screen.dart';
import 'package:flutter_news_app/screens/Sports/sports.dart';
import 'package:flutter_news_app/screens/Technology/technology_screen.dart';
import 'package:flutter_news_app/screens/Top%20Headings/top_headlines_screen.dart';

class HomeForAll extends StatelessWidget {
  const HomeForAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "24/7 News ",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color.fromARGB(255, 226, 223, 223)),
            isScrollable: true,
            tabs: const [
              Tab(text: "General"),
              Tab(text: "Top headlines"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
              Tab(text: "Sports"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
            TopHeadlinesScreen(),
            SportsScreen(),
          ],
        ),
      ),
    );
  }
}
