// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors, unused_import, file_names, avoid_print, unnecessary_this

import 'package:flutter/material.dart';
import 'dart:convert';

class TestWithIcon extends StatelessWidget {
  const TestWithIcon({ Key? key , required this.title, required this.iconName}) : super(key: key);
  final String title;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton.icon(onPressed: (){print("ok");}, icon: Icon(this.iconName, size: 25,), label: Text(this.title, style: TextStyle(fontSize: 20),))
    );
  }
}


