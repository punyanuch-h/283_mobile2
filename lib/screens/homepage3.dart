import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:phrase2/screens/detailKhlong.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/detail_place.dart';
import 'package:phrase2/widgets/wander_bottom_bar.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
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
          onTap: (Marker) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsPage()),
                );
              },
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
