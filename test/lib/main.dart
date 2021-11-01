// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: DummyWidget(),
    );
  }
}

class DummyWidget extends StatefulWidget {
  @override
  _DummyWidgetState createState() => _DummyWidgetState();
}

class _DummyWidgetState extends State<DummyWidget> {
  bool _isGreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _isGreen ? Colors.green : Colors.red,
        appBar: AppBar(
          title: Text('Your First App'),
        ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: <Widget>[
        //       TextButton(
        //         onPressed: () {
        //           setState(() {
        //             _isGreen = !_isGreen;
        //           });
        //         },
        //         child: Text(_isGreen ? 'TURN RED' : 'TURN GREEN'),
        //       ),
        //     ],
        //   ),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isGreen = !_isGreen;
                    });
                  },
                  child: Text(_isGreen ? 'TURN_COLOR_RED' : 'TURN_COLOR_GREEN'))
            ],
          ),
        ));
  }
}
