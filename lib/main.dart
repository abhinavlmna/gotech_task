import 'package:flutter/material.dart';
import 'package:youtube/Screens/splash/home.dart';
import 'package:youtube/Screens/splash/splash.dart';
import 'package:youtube/app/sizeutitls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homepage(),
        );
      },
    );
  }
}
