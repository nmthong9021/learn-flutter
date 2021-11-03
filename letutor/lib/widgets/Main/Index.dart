// ignore_for_file: unused_import, prefer_const_constructors, unused_field, unused_element, unnecessary_string_interpolations, file_names
import 'package:flutter/material.dart';
import './Home/home.dart';
import 'Message/ListMessage/ListMessage.dart';
import 'Tutor/ListTutor.dart';
import 'Upcoming/Upcoming.dart';
import '../AccountManagement/Setting/Setting.dart';

class Index extends StatefulWidget {
  const Index({ Key? key }) : super(key: key);
  static const routeName = '/index-screen';
  
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ListMessage(),
    Upcoming(),
    ListTutor(),
    Setting(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _widgetOptions.elementAt(_selectedIndex),
       bottomNavigationBar: BottomNavigationBar(
         iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Upcoming',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tutors',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}