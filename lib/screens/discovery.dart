import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/custom_icon_button.dart';
import 'package:phrase2/widgets/location_card.dart';
import 'package:phrase2/widgets/nearby_places.dart';
import 'package:phrase2/widgets/recommended_places.dart';
import 'package:phrase2/widgets/tourist_places.dart';
import 'package:phrase2/widgets/wander_bottom_bar.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Ahoy(context),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                theme_yellow, // Color 1 (Top)
                theme_blue, // Color 2 (Bottom)
              ],
            ),
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
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
          ),
        ),
      ),
      bottomNavigationBar: WanderBottomBar(),
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

  AppBar Ahoy(BuildContext context) {
    return AppBar(
      // elevation: 0,
      backgroundColor: theme_yellow,
      foregroundColor: theme_yellow,
      title: Container(
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                text: "Ahoy! Captain ",
                style: TextStyle(color: Colors.black, fontSize: 12),
                children: [
                  TextSpan(
                    text: "Jenny Wilson",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        CustomIconButton(
          icon: Icon(Ionicons.search_outline),
        ),
        SizedBox(width: 8.0), // เพิ่ม SizedBox เพื่อสร้างระยะห่าง
        CustomIconButton(
          icon: Icon(Ionicons.notifications_outline),
        ),
      ],
    );
  }

}


