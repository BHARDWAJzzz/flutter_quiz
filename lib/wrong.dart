import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrong extends StatefulWidget {
  const Wrong({super.key});

  @override
  State<Wrong> createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(5),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://kingdompastor.files.wordpress.com/2017/01/oops-wrong-answer.png")
            )),

      )),
    );
    ;
  }
}
