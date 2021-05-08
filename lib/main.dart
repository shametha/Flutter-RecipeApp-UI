import 'package:flutter/material.dart';
import 'package:shametha_cookbook/constants.dart';
import 'package:shametha_cookbook/screens/home/compontents/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookbook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
      ),
      home: Homescreen(),
    );
  }
}

