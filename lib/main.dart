// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Splash/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Splash(),
    );
  }
}
