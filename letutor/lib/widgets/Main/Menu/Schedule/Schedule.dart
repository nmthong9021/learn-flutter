// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Home/home.dart';

class Schedule extends StatelessWidget {
  const Schedule({ Key? key }) : super(key: key);
  static const routeName = '/schedule-screen';

  @override
  Widget build(BuildContext context) {
    //final tutorName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
       appBar: AppBar(
        title: Text('Schedule'),
        centerTitle: true,
        toolbarHeight: 55,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Schedule nè"),
        ],
      )
    );
  }
}

