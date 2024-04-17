import 'package:flutter/material.dart';
import 'package:phrase2/screens/review.dart';
import 'package:phrase2/utilities/colors.dart';

class DetailAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => EmojiPopup(),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: theme_blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                        )
                      ]),
                  child: Icon(
                    Icons.emoji_emotions_rounded,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: theme_blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 6),
                      ]),
                  child: Icon(
                    Icons.bookmark_add_rounded,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
