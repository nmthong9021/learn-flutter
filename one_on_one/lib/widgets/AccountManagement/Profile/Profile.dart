// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Main/Home/home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static const routeName = '/profile-screen';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final formKey = GlobalKey<FormState>();
  String _phone = "0377371240";
  String _language = "English";
  String _level = "Beginner";
  String _countryName = "Vietnam";
  List _whatToLearn = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          toolbarHeight: 55,
          backgroundColor: Colors.pink[300],
        ),
        body: Form(
          key: formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("avatar");
                      },
                      child: Container(
                        child: Badge(
                          badgeColor: Colors.green,
                          position: BadgePosition.topEnd(),
                          badgeContent: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            minRadius: 60,
                            maxRadius: 60,
                            backgroundColor: Colors.pink,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/65344054?v=4'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.phone),
                    // Expanded(child:
                    //   TextFormField(
                    //    keyboardType: TextInputType.phone,
                    //    //style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //    decoration: const InputDecoration(
                    //       icon: Icon(Icons.phone),
                    //       labelText: 'Phone',
                    //       border: OutlineInputBorder(),
                    //     ),
                    // ),
                    // )
                    buildPhone(),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(top: 15),
                // decoration: ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSubmit(),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  // Widget for Form field
  Widget buildPhone() => Expanded(
        child: TextFormField(
          initialValue: _phone,
          decoration: const InputDecoration(
            icon: Icon(Icons.phone, color: Colors.blue, size: 30,),
            labelText: 'Phone',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value!.isEmpty) {
            return "* Required";
                  }else
            return null;
          },
          onSaved: (value) => setState((){
            if(value != null){
              _phone = value;
            }
          }),
          keyboardType: TextInputType.phone,
          //obscureText: true,
        ),
      );

  Widget buildSubmit() {
    return ElevatedButton(
      onPressed: () {
        final bool isValid = formKey.currentState!.validate();
        if(isValid){
          formKey.currentState?.save();
          final message = "${_phone}";
          print(message);
        }
      },
      child: Text('Save'),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 36),
        primary: Colors.blue,
        textStyle: const TextStyle(fontSize: 20),
      ),
    );
    // return TextButton(
    //   style: TextButton.styleFrom(
    //     padding: const EdgeInsets.all(16.0),
    //     primary: Colors.white,
    //     textStyle: const TextStyle(fontSize: 20),
    //     backgroundColor: Colors.blue,
    //   ),
    //   onPressed: () {},
    //   child: const Text('Save'),
    // );
  }
}

// https://www.youtube.com/watch?v=2rn3XbBijy4   (flutter form)
// https://flutter.dev/docs/cookbook/forms/text-input
// https://www.rrtutors.com/description/Form-Builder-in-Flutter-Form-Validation
// https://flutter.dev/docs/cookbook/forms/validation
// https://flutter.dev/docs/cookbook/forms/text-input
// https://vedantj1203.medium.com/text-input-in-flutter-textfield-textformfield-f3c1d56b8260
