import 'package:flutter/material.dart';
import 'package:phrase2/screens/homepage.dart'; // Homepage
import 'package:phrase2/screens/homepage2.dart'; // Homepage2
import 'package:phrase2/screens/discovery.dart'; // DiscoveryPage
import 'package:phrase2/screens/detailKhlong.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:phrase2/screens/welcome.dart'; // DetailsPage
import 'package:phrase2/screens/profile.dart'; //Profilepage

// import 'package:phrase2/screens/detail.dart'; // DetailsPage
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: const DetailsPage(image: 'assets/images/city1.jpg',),
      home:const TicketPage(),
    );
  }
}
