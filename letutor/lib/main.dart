// ignore_for_file: unused_import, prefer_const_constructors, unused_field, unused_element, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'globals/strings.dart' as app_string;
//import 'dart:convert';
//import 'package:http/http.dart' as http;

import 'widgets/Main/Home/home.dart';
import 'widgets/Main/Menu/menu.dart';
import 'widgets/Main/Tutor/TutorDetail.dart';
import 'widgets/AccountManagement/Profile/Profile.dart';
import 'widgets/Main/Menu/Schedule/Schedule.dart';

void main() => runApp(const HomeApp());

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LetTutorFlutter',
      home: const Home(),
      //theme: ThemeData(primaryColor: Colors.green.shade800),
       routes: {
        MenuScreen.routeName: (ctx) =>MenuScreen(),
        Home.routeName: (ctx) => Home(),
        TutorDetail.routeName: (ctx) => TutorDetail(),
        Profile.routeName: (ctx) => Profile(),
        Schedule.routeName: (ctx) => Schedule(),
      },
    );
  }
}


