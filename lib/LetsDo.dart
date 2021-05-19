import 'package:ICE/Login.dart';
import 'package:ICE/registration.dart';
import 'package:flutter/material.dart';

class LetsDo extends StatefulWidget {
  @override
  _LetsDoState createState() => _LetsDoState();
}

class _LetsDoState extends State<LetsDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/LetsDo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.48,
              ),
              Text(
                "Let's Do this!",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text("Good Luck, and don't forget to enjoy ",
                    style: TextStyle(fontSize: 16)),
              ),
              Center(
                  child: Text("this exciting journey.",
                      style: TextStyle(fontSize: 16))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 44,
                          width: MediaQuery.of(context).size.width * 0.37,
                          decoration: BoxDecoration(
                              color: Colors.purple[900],
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ))),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registration()));
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 44,
                          width: MediaQuery.of(context).size.width * 0.37,
                          decoration: BoxDecoration(
                              color: Colors.red[600],
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
