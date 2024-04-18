import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Homepage3 extends StatefulWidget {
  @override
  _Homepage3State createState() => _Homepage3State();
}

class _Homepage3State extends State<Homepage3> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.732252, 100.493111),
    zoom: 14.4746,
  );

  Set<Marker> _markers = {};

  void _addMarker(LatLng position) {
    // This function will be used later to add new markers on map tap
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(position.toString()),
        position: position,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: _markers,
        onTap: _addMarker, // Add marker on map tap
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Search Location'),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
