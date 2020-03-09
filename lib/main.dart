import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App UI",
      theme: ThemeData(
          primaryColor: Color(0xFF26A69A), accentColor: Color(0xFFF9FBE7)),
      home: HomeScreen(),
    );
  }
}
