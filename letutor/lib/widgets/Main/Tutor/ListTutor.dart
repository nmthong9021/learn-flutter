// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/TutorClass.dart';
import '../../AccountManagement/Profile/Profile.dart';
import '../Tutor/TutorDetail.dart';
import '../common/ListTutorItem.dart';
import '../../../globals/strings.dart' as app_string;


class ListTutor extends StatefulWidget {
  const ListTutor({Key? key}) : super(key: key);
  static const routeName = '/list-tutor-screen';

  @override
  _ListTutorState createState() => _ListTutorState();
}

class _ListTutorState extends State<ListTutor> {
  //final _members = <Member>[]; //<dynamic>[];
  final _tutors = <Tutor>[];

  final _biggerFont = const TextStyle(
      fontSize: 18.0, color: Colors.blue, fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    _loadData1();
  }

  // Future<void> _loadData() async {
  //   const dataUrl = 'https://api.github.com/orgs/raywenderlich/members';
  //   final response = await http.get(Uri.parse(dataUrl));
  //   // setState(() {
  //   //   _members = json.decode(response.body) as List;
  //   // });
  //   setState(() {
  //     final dataList = json.decode(response.body) as List;
  //     for (final item in dataList) {
  //       final login = item['login'] as String? ?? '';
  //       final url = item['avatar_url'] as String? ?? '';
  //       final member = Member(login, url);
  //       _members.add(member);
  //     }
  //   });
  // }

  Future<void> _loadData1() async {
    setState(() {
      final responseObj = [
        {
          "id": 0,
          "name": "April Corpuz",
          "uri":
              "https://api.app.lettutor.com/avatar/cd0a440b-cd19-4c55-a2a2-612707b1c12cavatar1631029793834.jpg",
          "rate": 5.0,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
          ],
          "like": false,
          "description":
              "Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing them progress with my help as their teacher. In fact, making friends is one of my best skills. I am very good at adapting to new environments and new situations. I am very friendly and can easily get along well with everyone. I have obtained a 120-Hour TEFL Certificate. I get a variety of teaching techniques. I know that there are fast and not so fast learners. So don't worry, I will be with you every step of the way going at your own pace. Let's practice what you already know and add something new each day. With my skills and experiences, I can assure you that I can provide adequate English learning effectively and efficiently. Together, let's make English learning fun."
        },
        {
          "id": 1,
          "name": "Nhi Lam",
          "uri":
              "https://api.app.lettutor.com/avatar/86248137-6f7d-4cf5-ad2e-34da42722b28avatar1628058042246.jpg",
          "rate": 5.0,
          "arrTitle": ['EnglishforKids', 'ConversationalEnglish', 'IELTS'],
          "like": false,
          "description":
              "Hi, I am teacher Nhi. I have been teaching English for 2 years. I used to study abroad in Sydney for 7 years. During my time as an overseas student, I had spoken with many people from diverse cultural backgrounds; therefore, I have strong listening and speaking skills. I love teaching English and I will devote to helping you improve your English skills if you book my class. I am also patient and understanding because I know for many people, English is a tough language to master. In my class, I will help you correct your pronunciation and deliver the lessons in a way that is easy for you to understand. If you book my class, you will have many chances to practice your speaking skills and also improve your pronunciation and grammatical knowledge. Besides that, if you need me to, I will share my personal tips to study English more effectively with you and show you the importance of having fun and practice while learning English. As an English teacher, I constantly update my English knowledge to better serve my career and students."
        },
        {
          "id": 2,
          "name": "Joan Gacer",
          "uri":
              "https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg",
          "rate": 4.5,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
            'FLYERS',
            'KET',
            'PET',
            'IELTS',
            'TOEFL',
          ],
          "like": false,
          "description":
              "I was a customer service sales executive for 3 years before I become an ESL teacher I am trained to deliver excellent service to my clients so I can help you with business English dealing with customers or in sales-related jobs and a lot more, I also love to teach beginner, intermediate and advance I speak slowly and clearly so that the student can easily follow my instructions and pronunciation. In my class, I want environment-friendly fun and engaging I have many activities designed to help your enthusiasm in learning the language. I'm so excited to meet you in one of my classes let us have fun while learning English. See you there."
        },
        {
          "id": 3,
          "name": "April Corpuz",
          "uri":
              "https://api.app.lettutor.com/avatar/cd0a440b-cd19-4c55-a2a2-612707b1c12cavatar1631029793834.jpg",
          "rate": 5.0,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
          ],
          "like": false,
          "description":
              "Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing them progress with my help as their teacher. In fact, making friends is one of my best skills. I am very good at adapting to new environments and new situations. I am very friendly and can easily get along well with everyone. I have obtained a 120-Hour TEFL Certificate. I get a variety of teaching techniques. I know that there are fast and not so fast learners. So don't worry, I will be with you every step of the way going at your own pace. Let's practice what you already know and add something new each day. With my skills and experiences, I can assure you that I can provide adequate English learning effectively and efficiently. Together, let's make English learning fun."
        },
        {
          "id": 4,
          "name": "Nhi Lam",
          "uri":
              "https://api.app.lettutor.com/avatar/86248137-6f7d-4cf5-ad2e-34da42722b28avatar1628058042246.jpg",
          "rate": 5.0,
          "arrTitle": ['EnglishforKids', 'ConversationalEnglish', 'IELTS'],
          "like": false,
          "description":
              "Hi, I am teacher Nhi. I have been teaching English for 2 years. I used to study abroad in Sydney for 7 years. During my time as an overseas student, I had spoken with many people from diverse cultural backgrounds; therefore, I have strong listening and speaking skills. I love teaching English and I will devote to helping you improve your English skills if you book my class. I am also patient and understanding because I know for many people, English is a tough language to master. In my class, I will help you correct your pronunciation and deliver the lessons in a way that is easy for you to understand. If you book my class, you will have many chances to practice your speaking skills and also improve your pronunciation and grammatical knowledge. Besides that, if you need me to, I will share my personal tips to study English more effectively with you and show you the importance of having fun and practice while learning English. As an English teacher, I constantly update my English knowledge to better serve my career and students."
        },
        {
          "id": 5,
          "name": "Joan Gacer",
          "uri":
              "https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg",
          "rate": 4.5,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
            'FLYERS',
            'KET',
            'PET',
            'IELTS',
            'TOEFL',
          ],
          "like": false,
          "description":
              "I was a customer service sales executive for 3 years before I become an ESL teacher I am trained to deliver excellent service to my clients so I can help you with business English dealing with customers or in sales-related jobs and a lot more, I also love to teach beginner, intermediate and advance I speak slowly and clearly so that the student can easily follow my instructions and pronunciation. In my class, I want environment-friendly fun and engaging I have many activities designed to help your enthusiasm in learning the language. I'm so excited to meet you in one of my classes let us have fun while learning English. See you there."
        },
        {
          "id": 6,
          "name": "April Corpuz",
          "uri":
              "https://api.app.lettutor.com/avatar/cd0a440b-cd19-4c55-a2a2-612707b1c12cavatar1631029793834.jpg",
          "rate": 5.0,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
          ],
          "like": false,
          "description":
              "Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing them progress with my help as their teacher. In fact, making friends is one of my best skills. I am very good at adapting to new environments and new situations. I am very friendly and can easily get along well with everyone. I have obtained a 120-Hour TEFL Certificate. I get a variety of teaching techniques. I know that there are fast and not so fast learners. So don't worry, I will be with you every step of the way going at your own pace. Let's practice what you already know and add something new each day. With my skills and experiences, I can assure you that I can provide adequate English learning effectively and efficiently. Together, let's make English learning fun."
        },
        {
          "id": 7,
          "name": "Nhi Lam",
          "uri":
              "https://api.app.lettutor.com/avatar/86248137-6f7d-4cf5-ad2e-34da42722b28avatar1628058042246.jpg",
          "rate": 5.0,
          "arrTitle": ['EnglishforKids', 'ConversationalEnglish', 'IELTS'],
          "like": false,
          "description":
              "Hi, I am teacher Nhi. I have been teaching English for 2 years. I used to study abroad in Sydney for 7 years. During my time as an overseas student, I had spoken with many people from diverse cultural backgrounds; therefore, I have strong listening and speaking skills. I love teaching English and I will devote to helping you improve your English skills if you book my class. I am also patient and understanding because I know for many people, English is a tough language to master. In my class, I will help you correct your pronunciation and deliver the lessons in a way that is easy for you to understand. If you book my class, you will have many chances to practice your speaking skills and also improve your pronunciation and grammatical knowledge. Besides that, if you need me to, I will share my personal tips to study English more effectively with you and show you the importance of having fun and practice while learning English. As an English teacher, I constantly update my English knowledge to better serve my career and students."
        },
        {
          "id": 8,
          "name": "Joan Gacer",
          "uri":
              "https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg",
          "rate": 4.5,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
            'FLYERS',
            'KET',
            'PET',
            'IELTS',
            'TOEFL',
          ],
          "like": false,
          "description":
              "I was a customer service sales executive for 3 years before I become an ESL teacher I am trained to deliver excellent service to my clients so I can help you with business English dealing with customers or in sales-related jobs and a lot more, I also love to teach beginner, intermediate and advance I speak slowly and clearly so that the student can easily follow my instructions and pronunciation. In my class, I want environment-friendly fun and engaging I have many activities designed to help your enthusiasm in learning the language. I'm so excited to meet you in one of my classes let us have fun while learning English. See you there."
        },
        {
          "id": 9,
          "name": "April Corpuz",
          "uri":
              "https://api.app.lettutor.com/avatar/cd0a440b-cd19-4c55-a2a2-612707b1c12cavatar1631029793834.jpg",
          "rate": 5.0,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
          ],
          "like": false,
          "description":
              "Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing them progress with my help as their teacher. In fact, making friends is one of my best skills. I am very good at adapting to new environments and new situations. I am very friendly and can easily get along well with everyone. I have obtained a 120-Hour TEFL Certificate. I get a variety of teaching techniques. I know that there are fast and not so fast learners. So don't worry, I will be with you every step of the way going at your own pace. Let's practice what you already know and add something new each day. With my skills and experiences, I can assure you that I can provide adequate English learning effectively and efficiently. Together, let's make English learning fun."
        },
        {
          "id": 10,
          "name": "Nhi Lam",
          "uri":
              "https://api.app.lettutor.com/avatar/86248137-6f7d-4cf5-ad2e-34da42722b28avatar1628058042246.jpg",
          "rate": 5,
          "arrTitle": ['EnglishforKids', 'ConversationalEnglish', 'IELTS'],
          "like": false,
          "description":
              "Hi, I am teacher Nhi. I have been teaching English for 2 years. I used to study abroad in Sydney for 7 years. During my time as an overseas student, I had spoken with many people from diverse cultural backgrounds; therefore, I have strong listening and speaking skills. I love teaching English and I will devote to helping you improve your English skills if you book my class. I am also patient and understanding because I know for many people, English is a tough language to master. In my class, I will help you correct your pronunciation and deliver the lessons in a way that is easy for you to understand. If you book my class, you will have many chances to practice your speaking skills and also improve your pronunciation and grammatical knowledge. Besides that, if you need me to, I will share my personal tips to study English more effectively with you and show you the importance of having fun and practice while learning English. As an English teacher, I constantly update my English knowledge to better serve my career and students."
        },
        {
          "id": 11,
          "name": "Joan Gacer",
          "uri":
              "https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg",
          "rate": 4.5,
          "arrTitle": [
            'EnglishforKids',
            'BusinessEnglish',
            'ConversationalEnglish',
            'STARTERS',
            'MOVERS',
            'FLYERS',
            'KET',
            'PET',
            'IELTS',
            'TOEFL',
          ],
          "like": false,
          "description":
              "I was a customer service sales executive for 3 years before I become an ESL teacher I am trained to deliver excellent service to my clients so I can help you with business English dealing with customers or in sales-related jobs and a lot more, I also love to teach beginner, intermediate and advance I speak slowly and clearly so that the student can easily follow my instructions and pronunciation. In my class, I want environment-friendly fun and engaging I have many activities designed to help your enthusiasm in learning the language. I'm so excited to meet you in one of my classes let us have fun while learning English. See you there."
        },
      ];
      String response = jsonEncode(responseObj);

      final dataList = json.decode(response) as List;
      for (final item in dataList) {
        final id = item['id'] as int? ?? 0;
        final uri = item['uri'] as String? ?? '';
        final name = item['name'] as String? ?? '';
        final rate = item['rate'] as num? ?? 0.0;
        final description = item['description'] as String? ?? '';
        final arrTitle = item['arrTitle'] as List? ?? [];
        final tutor = Tutor(id, uri, name, rate, description, arrTitle);
        _tutors.add(tutor);
      }
    });
  }

  Widget _buildRow(int i) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        //title: Text('${_members[i]['login']}', style: _biggerFont),
        onTap: () {
          Navigator.of(context)
              .pushNamed(TutorDetail.routeName, arguments: _tutors[i].name);
        },
        //title: Text('${_members[i].login}', style: _biggerFont),
        title: Text(
          '${_tutors[i].name}',
          style: _biggerFont,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.pink,
          backgroundImage: NetworkImage(_tutors[i].uri),
        ),
      ),
    );
  }

  // List<Widget> children = const <Widget>[]
  Widget _buildTutorList() {
    List<Widget> listTutor = [];
    for (var tutor in _tutors) {
      listTutor.add(ListTutorItem(
          onTap: () {
            Navigator.of(context).pushNamed(TutorDetail.routeName,
                arguments: _tutors[tutor.id].name);
          },
          uri: tutor.uri,
          name: tutor.name,
          rate: tutor.rate,
          description: tutor.description,
          arrTitle: tutor.arrTitle));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: listTutor,
      //[Text("123"), Text('345'), Text('678')]
    );
  }

  void naviMenu(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tutor'),
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.pink,
      ),
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.home,
      //     size: 35,
      //   ), // leading for left
      //   // actions: [
      //   //   // action for right
      //   //   Container(
      //   //       //alignment: Alignment(-10, 0),
      //   //       width: 50,
      //   //       margin: EdgeInsets.all(7),
      //   //       decoration: BoxDecoration(
      //   //         borderRadius: BorderRadius.circular(8),
      //   //         color: Colors.redAccent[700],
      //   //       ),
      //   //       //padding: EdgeInsets.all(0),
      //   //       alignment: Alignment.center, //Alignment(-1, 0),
      //   //       // color: Colors.redAccent[700],
      //   //       child: FittedBox(
      //   //         child: IconButton(
      //   //           // alignment: Alignment(-10, 0),
      //   //           onPressed: () {
      //   //             //print("menu nè");
      //   //             Navigator.of(context).pushNamed(MenuScreen.routeName);
      //   //           },
      //   //           icon: Icon(
      //   //             Icons.menu_rounded,
      //   //             size: 32,
      //   //           ),
      //   //         ),
      //   //       )),
      //   //   // IconButton(
      //   //   //   onPressed: () {},
      //   //   //   icon: Icon(Icons.more_vert),
      //   //   // ),
      //   // ],

      //   titleSpacing: 0,
      //   title: const Text(app_string.appTitle,
      //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      //   backgroundColor: Colors.pink,
      //   toolbarHeight: 60,
      // ),
      // endDrawer: Drawer(
      //   child: ListView(
      //     //padding: EdgeInsets.only(top: 30),
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.pink,
      //         ),
      //         currentAccountPictureSize: const Size.square(72.0),
      //         accountName: Text("Nguyễn Minh Thông"),
      //         accountEmail: Text("songoku.minhthong@gmail.com"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           backgroundImage: NetworkImage(
      //               'https://avatars.githubusercontent.com/u/65344054?v=4'),
      //           // child: Text(
      //           //   "A",
      //           //   style: TextStyle(fontSize: 40.0),
      //           // ),
      //         ),
      //       ),
      //       ListTile(  
      //         leading: Icon(FontAwesomeIcons.user), title: Text("Profile"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ),
      //       ListTile(  
      //         leading: Icon(FontAwesomeIcons.calendarCheck), title: Text("Schedule"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ), 
      //       ListTile(  
      //         leading: Icon(FontAwesomeIcons.history), title: Text("History"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ),
      //       ListTile(  
      //         leading: Icon(FontAwesomeIcons.graduationCap), title: Text("Courses"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ),ListTile(  
      //         leading: Icon(FontAwesomeIcons.userGraduate), title: Text("Become a tutor"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ),ListTile(  
      //         leading: Icon(FontAwesomeIcons.signOutAlt), title: Text("Logout"),  
      //         onTap: () {  
      //           Navigator.of(context).pushNamed(Profile.routeName);  
      //         },  
      //       ), 
      //       // TextWithIcon(title: 'Profile', onTap: (){naviMenu(Profile.routeName);}, iconData: FontAwesomeIcons.user),
      //       //TextWithIcon(title: 'Schedule', onTap: (){naviMenu(Schedule.routeName);}, iconData: FontAwesomeIcons.calendarCheck),
      //     ],
      //   ),
      // ),
      body: //const Center(child: Text('GHFlutter 3 có state nè')),
          // ListView.builder(
          //     padding: const EdgeInsets.all(16.0),
          //     itemCount: _members.length,
          //     itemBuilder: (BuildContext context, int position) {
          //       return _buildRow(position);
          //     }),
          ListView(scrollDirection: Axis.vertical, children: <Widget>[
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(color: Color.fromRGBO(12, 61, 223, 1)),
        //       child: Column(
        //         children: [
        //           Container(
        //             margin: const EdgeInsets.only(top: 8, bottom: 7.5),
        //             child: Text(
        //               'Total lesson time: 0 hours 0 minutes',
        //               style: TextStyle(color: Colors.white, fontSize: 16),
        //             ),
        //           ),
        //           Container(
        //             margin: const EdgeInsets.only(bottom: 7.5),
        //             child: Text(
        //               'Upcoming Lesson',
        //               style: TextStyle(color: Colors.white, fontSize: 16),
        //             ),
        //           ),
        //           Container(
        //             margin: const EdgeInsets.only(bottom: 8),
        //             child: Text(
        //               'Sun, 24 Oct 21 20:30 - 20:55',
        //               style: TextStyle(color: Colors.white, fontSize: 16),
        //             ),
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               print('Enter lesson room');
        //             },
        //             child: Container(
        //               height: 40.0,
        //               //padding: const EdgeInsets.all(8.0),
        //               padding: const EdgeInsets.symmetric(vertical: 8),
        //               margin: const EdgeInsets.only(
        //                   left: 110, right: 110, top: 5, bottom: 10),
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(15.0),
        //                   color: Colors.white,
        //                   border: Border.all(color: Colors.black)),
        //               child: const Center(
        //                 child: Text(
        //                   'Enter lesson room',
        //                   style: TextStyle(
        //                       color: Color.fromRGBO(12, 61, 223, 1),
        //                       fontSize: 16),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        Container(
            //color: Colors.yellow,
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Filter Tutors',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                            bottom: 5,
                          ),
                          child: Text(
                            'Recommend Tutors',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )),
                      // Container(
                      //     margin: const EdgeInsets.only(
                      //       top: 20,
                      //       bottom: 5,
                      //     ),
                      //     child: Text(
                      //       'See All >',
                      //       style: TextStyle(
                      //           //fontWeight: FontWeight.bold,
                      //           fontSize: 16,
                      //           color: Color.fromRGBO(12, 61, 223, 1)),
                      //     )),
                    ]),
                Stack(
                  children: [_buildTutorList()],
                )
              ],
            ))
      ]),
    );
  }
}

