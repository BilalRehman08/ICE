import 'dart:async';
import 'package:ICE/fade.dart';
import 'package:ICE/landing.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Landing();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Center(child: FadeTransitionSample()),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              "assets/loading.gif",
            ),
          ))
        ],
      ),
    );
  }
}
