import 'package:app_trips/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Apple',
        scaffoldBackgroundColor: Color(0xFFF4F6F8),
      ),
      home: Homepage(),
    );
  }
}
