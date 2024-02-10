import 'package:flutter/material.dart';
import 'package:quiz_dart/english.dart';
import 'package:quiz_dart/math.dart';
import 'package:quiz_dart/phe.dart';
import 'package:quiz_dart/science.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple[100],
        body: SingleChildScrollView(
          child: Column(
                children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 5, right: 5),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(width: 10 , color: Colors.yellow.shade100),
                boxShadow: [BoxShadow(
                  blurRadius: 20,
                  color: Colors.deepPurple.shade900
                )],
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/03/45/97/36/360_F_345973621_sMifpCogXNoIDjmXlbLwx1QZA5ZmQVl8.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 10,),
          Text("!! PLEASE SELECT SUBJECT !!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple)),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level()));
                  });
                },
                child: Container(
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 5,color: Colors.yellow.shade100),
                    boxShadow: [BoxShadow(color: Colors.deepPurple.shade900 , blurRadius: 10)]
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://cdn5.vectorstock.com/i/1000x1000/26/64/maths-neon-label-vector-26152664.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => English()));
                  });
                },
                child: Container(
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 5,color: Colors.yellow.shade100),
                      boxShadow: [BoxShadow(color: Colors.deepPurple.shade900 , blurRadius: 10)]
                  ),
                  child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://as1.ftcdn.net/v2/jpg/03/15/87/64/1000_F_315876418_xuyGsm9yFTi0pMG1lcJ98rEl0oQ5C2w0.jpg')),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text("MATHS" , style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,color: Colors.deepPurple)),
              SizedBox(width: 90),
              Text("ENGLISH" ,style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.deepPurple))
            ],
          ),
          SizedBox(height: 20),
          
          Row(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Science()));
                  });
                },
                child: Container(height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 5,color: Colors.yellow.shade100),
                      boxShadow: [BoxShadow(color: Colors.deepPurple.shade900 , blurRadius: 10)]
                  ),
                  child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/science-word-concept_23-2148533907.jpg')),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Physical()));
                  });
                },
                child: Container(height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 5,color: Colors.yellow.shade100),
                      boxShadow: [BoxShadow(color: Colors.deepPurple.shade900 , blurRadius: 10)]
                  ),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://generalnote.com/assets/Image/General-Knowledge/General-knowledge.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text("SCIENCE" , style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,color: Colors.deepPurple)),
              SizedBox(width: 90),
              Expanded(
                  child: Text("GENERAL KNOWLEDGE" ,style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.deepPurple)))
            ],
          ),
                ],
              ),
        ));
  }
}
