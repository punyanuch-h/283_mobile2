// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:phrase2/models/setting.dart';
 
class SettingTile extends StatefulWidget {
  final Setting setting;
 
  const SettingTile({
    Key? key,
    required this.setting,
  }) : super(key: key);
 
  @override
  _SettingTileState createState() => _SettingTileState();
}
 
class _SettingTileState extends State<SettingTile> {
  bool isHovered = false;
 
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
 