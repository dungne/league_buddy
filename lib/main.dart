import 'package:flutter/material.dart';
import 'package:league_buddy/constant.dart';
import 'package:league_buddy/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
