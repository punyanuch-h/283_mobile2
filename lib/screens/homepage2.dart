import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async'; 

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage2> {
  static const LatLng _pGooglePlex = LatLng(13.8140, 100.0373); // Nakhon Pathom
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(13.7650836, 100.5379664),
          zoom: 16,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          Marker(
            markerId: MarkerId('Googleplex'),
            position: _pGooglePlex,
            infoWindow: InfoWindow(
              title: 'Googleplex',
              snippet: 'Google Headquarters',
            ),
            icon: BitmapDescriptor.defaultMarker, // ใช้ไอคอนที่กำหนดเองได้
          ),
        },
      ),
    
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Column(
  //       children: [
  //         GoogleMap(
  //           initialCameraPosition:
  //             CameraPosition(
  //               target: _pGooglePlex,
  //               zoom: 13
  //             ),
  //           ),
  //           Icon(
  //             Icons.location_on_rounded, // ใช้ icon บ้าน
  //             color: Colors.red,
  //           ),
  //       ],

  //     ),
  //   );
  // }
}
