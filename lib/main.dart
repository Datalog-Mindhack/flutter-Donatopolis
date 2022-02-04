import 'package:flutter/material.dart';
import 'package:donatopolis/app/sign_in_page.dart';

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
      home: SignInPage(),
    );
  }
}

