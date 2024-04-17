import 'package:flutter/material.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/fordetailTest.dart';

// สร้าง Widget สำหรับ Pop up 
Widget buildPopup(BuildContext context, bool showPopup, List<bool> selectedCircles, Function(int) selectCircle) {
  if (!showPopup) return SizedBox.shrink();
  return Stack(
    children: [
      // Overlay สีดำโปร่งแสง
      Positioned.fill(
        child: GestureDetector(
          onTap: () => Navigator.pop(context), // ซ่อน Pop up เมื่อกดนอก Pop up
        ),
      ),
      Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(150),
          ),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(8, (index) {
              return GestureDetector(
                onTap: () => selectCircle(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            for (int i = 0; i < 4; i++)
                              buildCircle(Icons.attach_money_rounded),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            for (int i = 0; i < 4; i++)
                              buildCircle(Icons.bus_alert_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              );
            }),
          ),
        ),
      ),
      // ปุ่มปิด Pop up (กากบาท)
      Positioned(
        top: 20,
        right: 20,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.close,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

Widget buildCircle(icon) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: theme_blue,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
