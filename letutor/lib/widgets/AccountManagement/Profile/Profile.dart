// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import '../../Main/Home/home.dart';
import '../../../models/Subject.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static const routeName = '/profile-screen';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  static List<Subject> _listWhatToLearn = [
    Subject('EnglishforKids'),
    Subject('BussinessEnglish'),
    Subject('ConversationalEnglish'),
    Subject('STARTERS'),
    Subject('MOVERS'),
    Subject('FLYERS'),
    Subject('KET'),
    Subject('PET'),
    Subject('IELTS'),
    Subject('TOEIC'),
    Subject('TOEFL')
  ];
  final _items = _listWhatToLearn
      .map((sub) => MultiSelectItem<Subject?>(sub, sub.name))
      .toList();

  String _phone = "0377371240";
  String _language = "English";
  String _level = "Beginner";
  String _countryName = "Vietnam";

  String _birthday = "1998-10-27";

  List<String> _whatToLearn = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          toolbarHeight: 55,
          backgroundColor: Colors.pink,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.blue,
            ],
          )),
          child: Form(
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
                          //print("avatar");
                          showModalBottomSheet<void>(
                            context: context,
                            backgroundColor: Color.fromRGBO(0, 0, 0, 0.01),//Colors.black12,
                            builder: (BuildContext context){
                              return Container(
                                 height: 120,
                                 width: 250,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   //shape: BoxShape.circle,
                                   borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0)),
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                   GestureDetector(
                                     onTap: (){
                                       print('Library');
                                     },
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Image.asset('assets/image.jpg', width: 100, height: 50,),
                                         Text('Library')
                                       ],
                                     ),
                                   ),
                                   GestureDetector(
                                     onTap: (){
                                       print('Camera');
                                     },
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Image.asset('assets/camera.png', width: 100, height: 50,),
                                         Text('Camera')
                                       ],
                                     ),
                                   )
                                 ],),
                              );
                            }
                          );
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
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30),
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
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30, right: 120),
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.language,
                        color: Colors.white,
                        size: 32,
                      ),
                      // SizedBox(width: 60,),
                      buildLanguage()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30, right: 120),
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(
                      //   Icons.language,
                      //   color: Colors.white,
                      //   size: 32,
                      // ),
                      Text(
                        "Level:",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      // SizedBox(width: 60,),
                      buildLevel()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30) ,
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Icon(
                        Icons.add_location,
                        color: Colors.white,
                        size: 32,
                      ),
                      
                      buildCountry(),
                      // Flexible(child: buildCountry())
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30, right: 120),
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.cake,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      buildBirthday()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, left: 30),
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "What to learn:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildWhatToLearn(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(top: 10),
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
          ),
        ));
  }

  // Widget for Form field
  Widget buildPhone() => Expanded(
        child: TextFormField(
          initialValue: _phone,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.phone,
              color: Colors.white,
              size: 32,
            ),
            labelText: 'Phone',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return "* Required";
            } else
              return null;
          },
          onSaved: (value) => setState(() {
            if (value != null) {
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
        if (isValid) {
          formKey.currentState?.save();
          final message =
              "${_phone}, ${_language}, ${_level}, ${_countryName}, ${_birthday}";
          print(message);
          final arrayResult = _whatToLearn.join(',');
          print(arrayResult);
        }
      },
      child: Text('Save'),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
        primary: Colors.pink,
        textStyle: const TextStyle(fontSize: 22),
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

  Widget buildLanguage() {
    return DropdownButton(
      // hint: _language == null
      //     ? Text('Dropdown')
      //     : Text(
      //         _language,
      //         style: TextStyle(color: Colors.blue),
      //       ),
      hint: Text(
        _language,
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
      //isExpanded: true,
      // icon: Icon(
      //   Icons.language,
      //   color: Colors.white,
      // ),
      // iconSize: 32.0,
      style: TextStyle(color: Colors.blue, fontSize: 20),
      items: ['English', 'Vietnamese'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _language = val.toString();
          },
        );
        //print(val);
      },
    );
  }

  Widget buildLevel() {
    return DropdownButton(
      // hint: _language == null
      //     ? Text('Dropdown')
      //     : Text(
      //         _language,
      //         style: TextStyle(color: Colors.blue),
      //       ),
      hint: Text(
        _level,
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
      //isExpanded: true,
      // icon: Icon(
      //   Icons.language,
      //   color: Colors.white,
      // ),
      // iconSize: 32.0,
      style: TextStyle(color: Colors.blue, fontSize: 20),
      items: ['Beginner', 'Intermediate', 'Advanced'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _level = val.toString();
          },
        );
        //print(val);
      },
    );
  }

  Widget buildCountry() {
    return CountryListPick(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Choose country'),
          toolbarHeight: 60,
        ),

        // if you need custome picker use this
        // pickerBuilder: (context, CountryCode countryCode){
        //   return Row(
        //     children: [
        //       Image.asset(
        //         countryCode.flagUri,
        //         package: 'country_list_pick',
        //       ),
        //       Text(countryCode.code),
        //       Text(countryCode.dialCode),
        //     ],
        //   );
        // },

        // To disable option set to false
        theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: true,
          //isShowCode: true,
          isDownIcon: true,
          showEnglishName: true,
        ),
        // Set default value
        initialSelection: '+84',
        // or
        // initialSelection: 'US'
        onChanged: (CountryCode? code) {
          if (code != null) {
            // print(code.name);
            // print(code.code);
            // print(code.dialCode);
            // print(code.flagUri);
            _countryName = code.name!;
          }
        },
        // Whether to allow the widget to set a custom UI overlay
        useUiOverlay: true,
        // Whether the country list should be wrapped in a SafeArea
        useSafeArea: false);
  }

  Widget buildBirthday() {
    return Expanded(
      child: DateTimePicker(
        // icon: Icon(
        //                 Icons.cake,
        //                 color: Colors.white,
        //                 size: 32,
        //               ),
        // type: mặc định là date
        //style: TextStyle(),
        initialValue: '1998-10-27',
        dateMask: 'yyyy-MM-dd',
        firstDate: DateTime(1920),
        lastDate: DateTime(2100),
        dateLabelText: 'Birthday',
        onChanged: (val) {
          _birthday = val.toString();
        },
        validator: (val) {
          // print(val);
          //return null;
        },
        onSaved: (val) {},
      ),
    );
  }

  Widget buildWhatToLearn() {
    return Flexible(
      child: MultiSelectDialogField(
        items: _items,
        title: Text("What to learn"),
        selectedColor: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(40)),
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
        ),
        buttonIcon: Icon(
          FontAwesomeIcons.arrowCircleDown,
          color: Colors.white,
          size: 20,
        ),
        buttonText: Text(
          "What to learn",
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 16,
          ),
        ),
        onConfirm: (results) {
          
          // List test = results.map(sub => sub.name).join(', ');
          //print(results.map((obj) => obj?.name));
          List<String> arrName = [];
          for (dynamic item in results) {
              arrName.add(item.name);
          }
          setState(() {
            _whatToLearn = arrName;
          });
          //print(arrName.join(', '));
        },
      ),
    );
  }
}

// https://www.youtube.com/watch?v=2rn3XbBijy4   (flutter form)
// https://flutter.dev/docs/cookbook/forms/text-input
// https://www.rrtutors.com/description/Form-Builder-in-Flutter-Form-Validation
// https://flutter.dev/docs/cookbook/forms/validation
// https://flutter.dev/docs/cookbook/forms/text-input
// https://vedantj1203.medium.com/text-input-in-flutter-textfield-textformfield-f3c1d56b8260
