import 'package:donatopolis/app/chatbot.dart';
import 'package:donatopolis/app/home_page.dart';
import 'package:donatopolis/app/navbar.dart';
import 'package:donatopolis/screens/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  get image => null;
  int currentIndex = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar:
          AppBar(title: Text("DONATOPOLIS"), elevation: 12.0, actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatBox()));
              },
              child: Icon(
                Icons.chat,
                size: 26.0,
              ),
            )),
      ]),
      body: ImageRotater([
        "assets/img1.jpeg",
        "assets/img2.jpeg",
        "assets/img3.jpeg",
        "assets/img4.jpeg"
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MapPage();
                  }));
                },
                child: Icon(CupertinoIcons.map_pin_ellipse)),
            label: 'Map',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
