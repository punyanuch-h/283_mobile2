import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phrase2/screens/login_page.dart';
import 'package:phrase2/screens/welcome.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return welcomePage();
          }

          //user is not logged
          else {
            return LoginPage();
          }
        }),
      ),
    );
  }
}
