import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube/Screens/splash/home.dart';
import 'package:youtube/app/sizeutitls.dart';

class Splashscrn extends StatefulWidget {
  const Splashscrn({super.key});

  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 180.v,
            width: 200.h,
            fit: BoxFit.fill,
          ),
        ));
  }
}
