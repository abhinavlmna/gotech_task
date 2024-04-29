import 'package:flutter/material.dart';

class Nodatapage extends StatefulWidget {
  const Nodatapage({super.key});

  @override
  State<Nodatapage> createState() => _NodatapageState();
}

class _NodatapageState extends State<Nodatapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'No Data to Show',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
