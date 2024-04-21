import 'package:flutter/material.dart';
import 'package:phrase2/screens/homepage.dart';

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/Homepage.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(1.0),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Explore your journey,\nonly with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 22, 22, 22),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(), // ขยับข้อความลงมา
            Text(
              "All your vacations destination ,\nare here. enjoy your day!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(244, 64, 55, 55).withOpacity(0.8),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 80),
            InkWell(
              onTap: () {
                // ต้องแก้เป็น homapage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 107, 224, 218),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
