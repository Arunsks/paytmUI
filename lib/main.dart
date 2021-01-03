import 'package:flutter/material.dart';
import 'package:paytm/chooseLocationPage.dart';
import 'package:paytm/homePage.dart';
import 'package:paytm/movieBookingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
