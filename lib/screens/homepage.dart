import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phrase2/models/setting.dart';
import 'package:phrase2/screens/discovery.dart';
import 'package:phrase2/screens/proflie.dart';

import 'package:phrase2/widgets/setting_title.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  // final User currentUser = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final LatLng center = LatLng(13.7618, 100.5324);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8), // Add spacing between icon and text
            Text(
              'search for destinations',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 104, 104, 104),
              ),
            ),
            SizedBox(width: 8), // Add spacing between text and settings_voice icon
            Icon(Icons.settings_voice),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 220, 187, 125), // Color 1 (Top)
                Color.fromRGBO(204, 235, 240, 1), // Color 2 (Bottom)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [],
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: center,
              zoom: 12.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                additionalOptions: {
                  'userAgentPackageName': 'com.wender',
                },
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: center,
                    width: 40.0,
                    height: 40.0,
                    child: Icon(
                      Icons.houseboat_rounded,
                      color: Colors.red.shade800,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(onItemTapped: _onItemTapped),
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DiscoveryPage()),
        );
        break;
      case 1:
        // Don't navigate to Homepage again
        break;
case 2:
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
  break;

      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TicketPage()),
        );
        break;
      default:
    }
  }
}

class BottomBar extends StatelessWidget {
  final ValueChanged<int> onItemTapped;

  const BottomBar({Key? key, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color.fromRGBO(204, 235, 240, 1),
      color: Color.fromARGB(255, 88, 139, 138),
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(Icons.search, size: 26, color: Colors.white),
        Icon(Icons.home, size: 26, color: Colors.white),
        Icon(Icons.person, size: 26, color: Colors.white),
        Icon(Icons.confirmation_number, size: 26, color: Colors.white),
      ],
      onTap: onItemTapped,
    );
  }
}
