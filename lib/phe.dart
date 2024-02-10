import 'package:flutter/material.dart';
import 'package:quiz_dart/home.dart';
import 'package:quiz_dart/main.dart';
import 'package:quiz_dart/right.dart';

class Physical extends StatefulWidget {
  const Physical({super.key});

  @override
  State<Physical> createState() => _PhysicalState();
}

class _PhysicalState extends State<Physical> {
  List<String> question = [
    "Q 1 ) Which is the Longest River in world ?  ",
    "Q 2 ) Which is the Nearest Star ? ",
    "Q 3 ) What is the Name of our Galaxy ? ",
    "Q 4 ) SI unit of Force is ?",
  ];

  List<String> opt1 = ["A) Nile", "A) Sun", "A) Milky Way", "A) Newton"];
  List<String> opt2 = ["B) Amazon", "B) Moon", "B) Samsung Galaxy", "B) Joule"];
  List<String> opt3 = ["C) Ganga", "C) Mars", "C) Virgo A", "C) Kgm/s"];
  List<String> opt4 = ["D) Volga", "D) Cancer", "D) Cygnus A", "D) m/s"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text(
          "LEVEL 4 :  GENERAL KNOWLEDGE ",
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
                              },
                              child: Text(opt1[index]),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purple[50]))),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              },
                              child: Text(opt2[index]),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purple[50]))),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              },
                              child: Text(opt3[index]),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purple[50]))),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                wrongSheet(context);
                              },
                              child: Text(opt4[index]),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purple[50])))
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
