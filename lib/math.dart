import 'package:flutter/material.dart';
import 'package:quiz_dart/english.dart';
import 'package:quiz_dart/home.dart';
import 'package:quiz_dart/main.dart';


class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  List<String> question = [
    "Q 1 ) What is equation of line ?  ",
    "Q 2 ) Who discovered zero? ",
    "Q 3 )  What is value of pi ? ",
    "Q 4 )  What is sum of all angle of Triangle?",
  ];

  List<String> opt1 = [
    "A) y = mx + c",
    "A) Aryabhatt",
    "A) 3.14",
    "A) 180"
  ];
  List<String> opt2 = [
    "B) ax + bx = 0 ",
    "B) Archimees",
    "B) 3.4",
    "B) 360",
  ];
  List<String> opt3 = [ "C) a^2 + b^2 = c^2", "C) Charles" ,"C) 90","C) 3.41"  ];
  List<String> opt4 = [  "D) a = b","D) Narayan", "D) 22*7","D) 270",];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text(
          "LEVEL 1 :  BASIC MATHS ",
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
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    height: 30,
                    width: double.infinity,
                    color: Colors.purple[100],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              question[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple[900]),
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
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt2[index])),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt3[index])),
                          ElevatedButton(
                              onPressed: () {
                                wrongSheet(context);
                              }, child: Text(opt4[index])),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => English()));
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
