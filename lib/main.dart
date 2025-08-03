import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_01/activity_screen.dart';
import 'package:instagram_01/home_screen.dart';
import 'package:instagram_01/main_screen.dart';
import 'package:instagram_01/post_screen.dart';
import 'package:instagram_01/profile_screen.dart';
import 'package:instagram_01/search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(30, 30),
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,

      home: Main_Screen(),
    );
  }
}
