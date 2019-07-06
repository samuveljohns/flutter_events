import 'dart:async';

import 'package:flutter/material.dart';
import 'package:event/home.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState(){
    loadTimer();
    super.initState();
  }

  navigate(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen()));
  }

  Future<Timer> loadTimer() async{
    return new Timer(Duration(seconds: 3),navigate);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Container(
        padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child:Image.network("https://itsallwidgets.com/images/logo.png")
      )
    );
  }
}

