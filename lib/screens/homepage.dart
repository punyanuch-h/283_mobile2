import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:phrase2/screens/details.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/wander_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage> {
  late GoogleMapController mapController;

  static const LatLng _center = LatLng(13.7563, 100.5018); 

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: theme_yellow,
          toolbarHeight: 80.0,
          title: SearchBar(),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: {
            const Marker(
              markerId: MarkerId("Nakhon_Pathom"),
              position: LatLng(13.8140, 100.0373),
              infoWindow: InfoWindow(
                title: "Khlong Bang Luang Floating Market",
                snippet: "Water Market, Nakhon Pathom",
              ),
            ),
          },
          onTap: (MarkerId) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsPage()),
                );
              },
        ),
        bottomNavigationBar: WanderBottomBar(),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade400.withOpacity(0.5),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for destinations',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_voice),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
