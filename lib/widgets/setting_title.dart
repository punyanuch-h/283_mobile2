import 'package:flutter/material.dart';
import 'package:phrase2/models/setting.dart';
// for profile page
 
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
            "assets/images/Female.jpg",
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
                  "Point 30,000 ", 
                  style: TextStyle(
                    color: Color.fromARGB(255, 197, 175, 10),
                  ),
                ),
                Icon(
                  Icons.monetization_on,
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