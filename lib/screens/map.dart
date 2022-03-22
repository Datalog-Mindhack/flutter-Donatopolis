import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(26.8467, 80.9462),
    zoom: 11.5,
  );

  late Position currentPosition;
  var geolocator = Geolocator();

  void locatePosition() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngPosition, zoom: 14);
    _googleMapController
        ?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  GoogleMapController? _googleMapController;

  @override
  void dispose() {
    _googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 2;
    int _selectedIndex = 2;
    return Scaffold(
      backgroundColor: Colors.black,
      body: GoogleMap(
        myLocationButtonEnabled: true,
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        onMapCreated: (controller) {
          _googleMapController = controller;
          locatePosition();
        },
      ),
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
