// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Setting'),
          centerTitle: true,
          toolbarHeight: 55,
          backgroundColor: Colors.pink,
        ),
        body: Text("Setting"),
    );
  }
}