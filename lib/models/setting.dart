import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// for profile

class Setting {
  final String title;
  final String route;
  final IconData icon;

  Setting({
    required this.title,
    required this.route,
    required this.icon,
  });
}

final List<Setting> settings = [
  Setting(
    title: "Privicy",
    route: "/",
    icon: Icons.send,
  ),
  Setting(
    title: "Friends",
    route: "/",
    icon: Icons.diversity_1,
  ),
  Setting(
    title: "My places",
    route: "/",
    icon: Icons.star,
  ),
  Setting(
    title: "Donation",
    route: "/",
    icon: Icons.favorite,
  ),
  Setting(
    title: "Pocket",
    route: "/",
    icon: Icons.account_balance_wallet,
  ),
  Setting(
    title: "Redeem",
    route: "/",
    icon: Icons.redeem,
  ),
  Setting(
    title: "Help & Feedback",
    route: "/",
    icon: Icons.contact_support,
  ),
];
