import 'package:donatopolis/app/home_page.dart';
import 'package:donatopolis/app/home_page_new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Donatopolis",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePageMain(),
    );
  }
}
