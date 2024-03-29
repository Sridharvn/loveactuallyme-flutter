// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loveactuallyme/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.comfortable,
      ),
      home: SafeArea(
        child: const Home(),
      ),
    );
  }
}
