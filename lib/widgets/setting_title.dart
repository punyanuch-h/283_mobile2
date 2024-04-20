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
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // ใส่การนำทางไปยังหน้าต่าง ๆ ตามต้องการ
        },
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isHovered ? Colors.blueGrey.shade200 : null,
              ),
              child: Icon(
                widget.setting.icon as IconData?,
                color: isHovered ? Colors.blueGrey.shade800 : Colors.blueGrey,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              widget.setting.title,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 103, 101, 101),
            ),
          ],
        ),
      ),
    );
  }
}
