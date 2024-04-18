import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:phrase2/utilities/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Discovery"),
    const Text("Home"),
    const Text("Profile"),
    const Text("Ticket"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WanderApp"),
      ),
      body: _widgetOptions[0],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: darker_blue,
        unselectedItemColor: theme_blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Discovery"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_access_time_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
              label: "Tickets"),
        ],
      ),
    );
  }
}
