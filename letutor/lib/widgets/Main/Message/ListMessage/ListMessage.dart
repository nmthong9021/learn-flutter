// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListMessage extends StatefulWidget {
  const ListMessage({ Key? key }) : super(key: key);

  @override
  _ListMessageState createState() => _ListMessageState();
}

class _ListMessageState extends State<ListMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('List Message'),
          centerTitle: true,
          toolbarHeight: 55,
          backgroundColor: Colors.pink,
        ),
        body: Text("List Message"),
    );
  }
}

