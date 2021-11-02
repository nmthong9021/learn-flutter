// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Home/home.dart';

class MenuScreen extends StatelessWidget {
  static const routeName = '/menu-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Screen'),
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.pink[300],
      ),
      body:Container(
        margin: EdgeInsets.only(left: 25, top:0, right: 25, bottom:0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            //Text('This is the menu screen!'),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("profile");
                    },
                    icon: Icon(FontAwesomeIcons.user),
                    // icon: Icon(
                    //   Icons.account_circle,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("schedule");
                    },
                    icon: Icon(FontAwesomeIcons.calendarCheck),
                    // icon: Icon(
                    //   Icons.schedule,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Schedule',
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("history");
                    },
                    icon: Icon(FontAwesomeIcons.history),
                    // icon: Icon(
                    //   Icons.history,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'History',
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("courses");
                    },
                    icon:Icon(FontAwesomeIcons.graduationCap),
                    // icon: Icon(
                    //   Icons.school,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Courses',
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("becometutor");
                    },
                    icon: Icon(FontAwesomeIcons.userGraduate),
                    // icon: Icon(
                    //   Icons.people,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Become a tutor',
                        // textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton.icon(
                    onPressed: () {
                      print("logout");
                    },
                    icon: Icon(FontAwesomeIcons.signOutAlt),
                    // icon: Icon(
                    //   Icons.logout,
                    //   size: 25,
                    // ),
                    label: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Logout',
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.routeName);
                },
                child: Text('BACK TO HOME'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('BACK USING POP METHOD'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
