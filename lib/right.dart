import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dart/home.dart';
import 'package:quiz_dart/math.dart';

class Right extends StatefulWidget {
  const Right({super.key});

  @override
  State<Right> createState() => _RightState();
}

class _RightState extends State<Right> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context , MaterialPageRoute(builder: (context) => Home()));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.transparent,
        body: Container(
                margin: EdgeInsets.all(5),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://ranjandesilva.files.wordpress.com/2015/10/right-answer.jpg"))),
              ),
      ),
    );
  }
}
