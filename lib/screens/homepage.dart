import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:phrase2/screens/detailKhlong.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
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
            SizedBox(width: 8), // เพิ่มระยะห่างระหว่างไอคอนและข้อความ
            Text(
              'search for destinations',
              style: TextStyle(
                color: Color.fromARGB(255, 104, 104, 104),
              ),
            ),
            SizedBox(width: 8), // เพิ่มระยะห่างระหว่างข้อความและไอคอน settings_voice
            Icon(Icons.settings_voice),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 220, 187, 125), // สีแรก (ข้างบน)
                Color.fromRGBO(204, 235, 240, 1), // สีที่สอง (ข้างล่าง)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          
        ],
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
                userAgentPackageName: 'com.wender',
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
                        size: 50.0
                      ),
                    ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
