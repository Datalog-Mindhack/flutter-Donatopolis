import 'package:donatopolis/app/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("DONATOPOLIS"),
        elevation: 12.0,
      ),
      body: ,
    );
  }
}