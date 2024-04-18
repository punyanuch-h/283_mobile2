import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/custom_icon_button.dart';
import 'package:phrase2/widgets/location_card.dart';
import 'package:phrase2/widgets/nearby_places.dart';
import 'package:phrase2/widgets/recommended_places.dart';
import 'package:phrase2/widgets/tourist_places.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Ahoy(),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 220, 187, 125), // Color 1 (Top)
              Color.fromRGBO(204, 235, 240, 1), // Color 2 (Bottom)
            ],
          ),
        ),
        child: bodyDiscovery(context),
      ),      
      bottomNavigationBar: BottomBar(),
    );
  }

  ListView bodyDiscovery(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(14),
      children: [
        const LocationCard(),
        const SizedBox(height: 15,),
        const TouristPlaces(),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommendation",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View All", 
                style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const RecommendedPlaces(),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nearby From You",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View All", 
                style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const NearbyPlaces(),
      ],
    );
  }

  AppBar Ahoy() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      title: Row(
        children: [
          RichText(
            text: TextSpan(
              text: "Ahoy! Captain ",
              style: TextStyle(color: Colors.black, fontSize: 16),
              children: [
                TextSpan(
                  text: "Jenny Wilson",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        CustomIconButton(
          icon: Icon(Ionicons.search_outline),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 12),
          child: CustomIconButton(
            icon: Icon(Ionicons.notifications_outline),
          ),
        ),
      ],
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      onTap: _onItemTapped,
    );
  }
}
