import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:phrase2/screens/auth_page.dart';
import 'package:phrase2/screens/login_page.dart';
import 'package:phrase2/screens/proflie.dart';
import 'firebase_options.dart';
import 'package:phrase2/screens/homepage.dart'; // Homepage
import 'package:phrase2/screens/homepage2.dart'; // Homepage2
import 'package:phrase2/screens/discovery.dart'; // DiscoveryPage
import 'package:phrase2/screens/detailKhlong.dart';
import 'package:phrase2/screens/homepage3.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:phrase2/screens/welcome.dart'; // DetailsPage
import 'package:phrase2/widgets/setting_title.dart'; //Profilepage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: await DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wander',
      debugShowCheckedModeBanner: false,
      home: HomePage3(),
    );
  }
}
