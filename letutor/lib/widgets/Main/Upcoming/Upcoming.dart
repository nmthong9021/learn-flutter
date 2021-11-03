// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({ Key? key }) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Upcoming'),
          centerTitle: true,
          toolbarHeight: 55,
          backgroundColor: Colors.pink,
        ),
        body: Text("Upcoming"),
    );
  }
}