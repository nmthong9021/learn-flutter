// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './home.dart';

class TutorDetail extends StatelessWidget {
  const TutorDetail({ Key? key }) : super(key: key);
  static const routeName = '/tutor-detail';

  @override
  Widget build(BuildContext context) {
    final tutorName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
       appBar: AppBar(
        title: Text('Tutor Detail'),
        centerTitle: true,
        toolbarHeight: 55,
        backgroundColor: Colors.pink[300],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tutor Detail name: ${tutorName}"),
        ],
      )
    );
  }
}

