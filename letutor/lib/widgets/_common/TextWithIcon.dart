// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors, unused_import, file_names, avoid_print, unnecessary_this, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({Key? key, required this.onTap, required this.title, required this.iconData}) : super(key: key);
  final Function onTap;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Icon(iconData),
            Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
          ],
        ),
      ),
    );
  }
}
