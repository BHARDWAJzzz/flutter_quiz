import 'package:flutter/material.dart';
import 'package:quiz_dart/english.dart';
import 'package:quiz_dart/home.dart';
import 'package:quiz_dart/splash.dart';
import 'package:quiz_dart/math.dart';
import 'package:quiz_dart/phe.dart';
import 'package:quiz_dart/right.dart';
import 'package:quiz_dart/science.dart';
import 'package:quiz_dart/welcome.dart';
import 'package:quiz_dart/wrong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.purple,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

void RightSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://ranjandesilva.files.wordpress.com/2015/10/right-answer.jpg"))),
        );
      });
}

void wrongSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.clipartmax.com/png/middle/202-2023199_bedfordshire-vs-hertfordshire-vs-roehampton-wrong-answer-clip-art-gif.png"),
                  fit: BoxFit.fill)),
        );
      });
}
