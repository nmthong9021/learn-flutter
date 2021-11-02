// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:convert';

class FavoriteLike extends StatefulWidget {
  const FavoriteLike({Key? key}) : super(key: key);

  @override
  _FavoriteLikeState createState() => _FavoriteLikeState();
}

class _FavoriteLikeState extends State<FavoriteLike> {
  bool _isLike = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print("like nè");
        setState(() {
          _isLike = !_isLike;
        });
      },
      child: Icon(
        Icons.favorite,
        size: 30,
        color: _isLike ? Colors.red : Colors.grey,
      ),
    );
  }
}

class ListTutorItem extends StatelessWidget {
  const ListTutorItem(
      {Key? key,
      required this.onTap,
      required this.uri,
      required this.name,
      required this.rate,
      required this.description,
      required this.arrTitle})
      : super(key: key);
  final Function onTap;
  final String uri;
  final String name;
  final num rate;
  final String description;
  final List arrTitle;

  Widget _buildListArrTitle() {
    //print(arrTitle);
    String str = arrTitle.join(", ");
    return Row(
      children: [
        Flexible(
            child: Text(
          str,
          // maxLines: 3,
          //overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Color.fromRGBO(12, 61, 223, 1)),
        )),
        //Text(description, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print("đụng nè");
        onTap();
      },
      child: Container(
          //height: 40.0,
          //padding: const EdgeInsets.all(8.0),
          //padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10),
          margin: const EdgeInsets.only(left: 1, right: 2, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          // child: Text(
          //   title,
          //   style: TextStyle(color: Colors.grey[700]),
          // )
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        minRadius: 20,
                        maxRadius: 25,
                        backgroundColor: Colors.pink,
                        backgroundImage: NetworkImage(uri),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        //width: 100,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Row(children: [Text(name)]),
                            Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Text("${rate}/5"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // GestureDetector(
                  //   onTap: (){print("like");},
                  //   child: Icon(Icons.favorite, size: 30),
                  // )
                  FavoriteLike(),
                  // Container(
                  //     //width: 200,
                  //     // margin: EdgeInsets.only(right: 0),
                  //     child: Icon(Icons.favorite)),
                ],
              ),
              _buildListArrTitle(),
              Row(
                children: [
                  Flexible(
                      child: Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )),
                  //Text(description, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
                ],
              )
            ],
          )),
    );
  }
}
