import 'package:donatopolis/app/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  get image => null;
  int curruntindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text("DONATOPOLIS"), elevation: 12.0),
      body: ImageRotater(["img1.jpeg", "img2.jpeg", "img3.jpeg", "img4.jpeg"]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curruntindex,
        onTap: (index) => curruntindex = index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map_pin_ellipse),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}

class ImageRotater extends StatefulWidget {
  List<String> photos;

  ImageRotater(this.photos);

  @override
  State<StatefulWidget> createState() => new ImageRotaterState();
}

class ImageRotaterState extends State<ImageRotater> {
  int _pos = 0;
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(new Duration(seconds: 3), (Timer t) {
      setState(() {
        _pos = (_pos + 1) % widget.photos.length;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Image.asset(
      widget.photos[_pos],
      gaplessPlayback: true,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = Null as Timer;
    super.dispose();
  }
}
