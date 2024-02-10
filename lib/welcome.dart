

import 'package:flutter/material.dart';

import 'home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.yellow.shade100),
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/02/38/08/85/360_F_238088553_TeibsCUmYQke8Il6pjLTwX9jhTKkr0vB.jpg"),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade900,
                      blurRadius: 30,
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                  labelText: "Enter Name",
                  labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  constraints: BoxConstraints(maxWidth: 300),
                  filled: true,
                  fillColor: Colors.yellow.shade50,
                  contentPadding: EdgeInsets.only(left: 20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 3))),
            ),
            SizedBox(height: 40),
            TextFormField(
              validator: (String) {},
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  constraints: BoxConstraints(maxWidth: 250),
                  filled: true,
                  fillColor: Colors.yellow.shade50,
                  contentPadding: EdgeInsets.only(left: 20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 3))),
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade50)),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  });
                },
                child: Icon(
                  Icons.arrow_forward_outlined,
                  size: 35,
                  color: Colors.black,
                )),
            Text("Forget password ?? ")
          ],
        ),
      ),
    );
  }
}
