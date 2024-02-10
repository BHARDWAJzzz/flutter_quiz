import 'package:flutter/material.dart';
import 'package:quiz_dart/main.dart';
import 'package:quiz_dart/phe.dart';
import 'package:quiz_dart/right.dart';

import 'home.dart';

class Science extends StatefulWidget {
  const Science({super.key});

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  List<String> question = [
    "Q 1 ) What is the SI unit of Charge ?  ",
    "Q 2 ) What is the power house of Cell  ? ",
    "Q 3 ) What is the SI unit of Temperature ? ",
    "Q 4 ) Metal  Liquid at Room Temperature ?",
  ];

  List<String> opt1 = [
    "A) Columb",
    "A) Mitochondria ",
    "A) Kelvin",
    "A) Mercury"
  ];
  List<String> opt2 = [
    "B) Ampere",
    "B) Tissue",
    "B) Celsius",
    "B) Lead"
  ];
  List<String> opt3 = ["C) Joule", "C) Cellulose", "C)Fehrenheit ", "C) Potassium"];
  List<String> opt4 = ["D) Candela", "D) Starch", "D) Rankine", "D) Sodium"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text(
          "LEVEL 3 :  SCIENCE ",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Physical()));
                    });
                  },
                  child: Icon(Icons.navigate_next , size: 40),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
