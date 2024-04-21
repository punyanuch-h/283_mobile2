import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:phrase2/models/setting.dart';
import 'package:phrase2/screens/homepage.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/avatar_card.dart';
import 'package:phrase2/widgets/setting_title.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:phrase2/screens/discovery.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: theme_blue,
        color: Color.fromARGB(255, 88, 139, 138),
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.search, size: 26, color: Colors.white),
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.person, size: 26, color: Colors.white),
          Icon(Icons.confirmation_number, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscoveryPage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TicketPage()),
            );
          }
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 220, 187, 125), // Color on top
              Color.fromRGBO(204, 235, 240, 1), // Color at the bottom
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AvatarCard(),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),
                  Column(
                    children: List.generate(
                      settings.length,
                      (index) => SettingTile(setting: settings[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}