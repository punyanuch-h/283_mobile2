import 'package:flutter/material.dart';
import 'package:phrase2/utilities/colors.dart';

class KhlongBangLuang extends StatelessWidget {
  const KhlongBangLuang({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                Text(
                  "Khlong Bang Luang\nFloating Market",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ]),
              SizedBox(height: 10),
              Text(
                "ทางเดินริมคลองที่มีแกลเลอรีศิลปะ แผงขายงานฝีมือ ร้านอาหารไทย รวมถึงเรือขายก๋วยเตี๋ยว",
                style: TextStyle(color: Colors.black54, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/bangKlong1.jpg",
                          fit: BoxFit.cover,
                          width: 120,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/bangKlong2.jpg",
                          fit: BoxFit.cover,
                          width: 120,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bangKlong3.png"),
                          fit: BoxFit.cover,
                          opacity: 0.4,
                        )
                      ),
                      child: Text(
                        "10+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text("Jenny Wilson",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                          Row(
                            children: [star_icon(),star_icon(),star_icon(),star_icon(),star_icon(),],
                          ),
                        ]
                      ),
                      SizedBox(width: 100,),
                      Column(
                        children: [
                          Text(
                            "4 days ago",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54
                            ),
                          )
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Text(
                        "Beautiful markets on the other side of busy Bangkok. If you visit Wat Arun you can get a taxi from there only takes 18 mins, walk around for 1 hour then get a taxi back to Wat Arun and jump on the boat back to mainland Bangkok. Well. Worth it. Absolutely beautiful.",
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.money,
                            color: lighter_than_black,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.bus_alert,
                            color: lighter_than_black,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }

  Icon star_icon() {
    return Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  );
  }
}
