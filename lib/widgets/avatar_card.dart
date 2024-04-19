import 'package:flutter/material.dart';
// for profile page

class AvatarCard extends StatelessWidget {
  const AvatarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/Female.png",
            width: 65,
            height: 65,
          ),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Jenny Wilson",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            Row(
              children: [
                Text(
                  "Point 30,000 ", // ใส่รหัส Unicode ของไอคอน 'Monetization On' หลังตัวเลข
                  style: TextStyle(
                    color: Color.fromARGB(255, 197, 175, 10),
                  ),
                ),
                Icon(
                  Icons.monetization_on, // ใส่ไอคอน monetization_on ที่ต้องการ
                  color: Color.fromARGB(255, 197, 175, 10),
                  size: 18,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
