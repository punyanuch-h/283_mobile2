import 'package:flutter/material.dart';
import 'package:phrase2/utilities/colors.dart';

class EmojiPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: darker_blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Text(
                  'Quickly Reviews',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  rowReview1(),
                  SizedBox(height: 20.0),
                  rowReview2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row rowReview1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleIconReview(Icons.emoji_emotions_outlined),
        SizedBox(width: 20.0),
        CircleIconReview(Icons.people_outline),
        SizedBox(width: 20.0),
        CircleIconReview(Icons.attach_money_rounded),
        SizedBox(width: 20.0),
        CircleIconReview(Icons.bus_alert_rounded),
      ],
    );
  }

  Row rowReview2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleIconReview(Icons.bus_alert_rounded),
        SizedBox(width: 20.0),
        CircleIconReview(Icons.add),
        SizedBox(width: 20.0),
        BlankCircle(),
        SizedBox(width: 20.0),
        BlankCircle()
      ],
    );
  }

  Column CircleIconReview(icon) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: theme_blue,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 6),
                ]),
            child: Icon(
              icon,
              color: Colors.black,
              size: 50,
            ),
          ),
        )
      ],
    );
  }

  Column BlankCircle() {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: theme_blue,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(color: darker_blue, blurRadius: 6),
            ])),
      ],
    );
  }
}
