import 'package:flutter/material.dart';
import 'package:quiz_dart/main.dart';
import 'package:quiz_dart/phe.dart';
import 'package:quiz_dart/right.dart';
import 'package:quiz_dart/science.dart';

import 'home.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  List<String> question = [
    "Q 1 ) Which one is not Vowel ?  ",
    "Q 2 ) Kiara needs _____ money ? ",
    "Q 3 ) Antonym of Bad is  ? ",
    "Q 4 ) Synonym of Brave ?",
  ];

  List<String> opt1 = [
    "A) I",
    "A) some ",
    "A) Good",
    "A) Courageous"
  ];
  List<String> opt2 = [
    "B) W",
    "B) just",
    "B) evil",
    "B) Coward"
  ];
  List<String> opt3 = ["C) T", "C) much", "C) hell", "C) Fearful"];
  List<String> opt4 = ["D) L", "D) how", "D) Devil", "D) Afraid"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text(
          "LEVEL 2 :  ENGLISH ",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.deepPurple[900]),
        ),
        actions: [IconButton(onPressed: (){
          setState(() {
            Navigator.push( context , MaterialPageRoute(builder: (context) => Home()));
          });
        }, icon: Icon(Icons.home))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              4,
              (index) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    height: 30,
                    width: double.infinity,
                    color: Colors.purple[100],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                question[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple[900]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  RightSheet(context);
                                });
                              }, child: Text(opt1[index])),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt2[index])),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                wrongSheet(context);
                              }, child: Text(opt3[index])),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                wrongSheet(context);
                              }, child: Text(opt4[index]))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Science()));
                    });
                  },
                  child: Icon(Icons.navigate_next , size: 40),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
