import 'package:covid_19_tracker/constant.dart';
import 'package:covid_19_tracker/pages/info.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19 Tracker',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          body1: TextStyle(
            color: kBodyTextColor,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
