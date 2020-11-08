import 'package:flutter/material.dart';
import 'package:krushi_sarathi_ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'krushi_sarathi_ui',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
