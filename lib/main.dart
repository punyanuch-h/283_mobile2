import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:phrase2/screens/details.dart';
import 'package:phrase2/screens/homepage.dart';
import 'package:phrase2/screens/login_page.dart';
import 'firebase_options.dart';

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
      home: DetailsPage(),
    );
  }
}
