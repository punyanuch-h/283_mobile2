import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:phrase2/screens/discovery.dart';
import 'package:phrase2/screens/homepage.dart';
import 'package:phrase2/screens/proflie.dart';
import 'package:phrase2/screens/ticket_page.dart';

class WanderBottomBar extends StatefulWidget {
  const WanderBottomBar({Key? key}) : super(key: key);

  @override
  State<WanderBottomBar> createState() => _WanderBottomBarState();
}

class _WanderBottomBarState extends State<WanderBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiscoveryPage()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
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

