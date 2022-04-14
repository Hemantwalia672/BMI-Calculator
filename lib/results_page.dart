// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(child: Text('BMI CALCULATOR')),
        ),
      ),
    );
  }
}
