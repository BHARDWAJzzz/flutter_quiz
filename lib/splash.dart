
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_dart/welcome.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context , MaterialPageRoute(builder: (context) => Welcome()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://thumbs.dreamstime.com/b/test-quiz-logo-icon-isolated-white-background-test-quiz-logo-icon-isolated-white-background-simple-vector-logo-231509052.jpg")
              )
            ),
          ),
        ],
      ),
    );
  }
}
