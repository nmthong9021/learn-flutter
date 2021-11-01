// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'dart:convert';

class FilterTag extends StatelessWidget {
  const FilterTag({Key? key, required this.onTap, required this.title}) : super(key: key);
   final Function onTap;
   final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //print("đụng nè");
        onTap();
      },
      child: Container(
          //height: 40.0,
          //padding: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
          margin: const EdgeInsets.only(left: 1, right: 2, bottom: 2.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.grey[300],
              border: Border.all(color: Colors.black)),
          child: Text(
            title,
            style: TextStyle(color: Colors.grey[700]),
          )),
    );
  }
}
