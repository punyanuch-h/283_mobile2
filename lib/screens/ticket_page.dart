import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:phrase2/screens/discovery.dart';
import 'package:phrase2/screens/homepage.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromARGB(255, 220, 187, 125), // สีแรก (ข้างบน)
              Color.fromRGBO(204, 235, 240, 1), // สีที่สอง (ข้างล่าง)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 30), // ปรับระยะห่างของรูปภาพ
              Transform.translate(
                offset: Offset(0.0, -10.0), // ขยับลงมาเล็กน้อย
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 86,
                        width: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/pair_pare.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Journey",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Thailand",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFFF4F4F4),
                            ),
                            padding: EdgeInsets.all(2),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF009797),
                                  ),
                                  child: Icon(
                                    Icons.workspace_premium,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Premium status",
                                  style: TextStyle(
                                    color: const Color(0xFF3DAAAA),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13, // ปรับขนาดเป็น 10
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 50,
                    height:
                        50, // เพิ่มความสูงของ container เพื่อให้เป็นสี่เหลี่ยมจตุรัส
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 244, 242, 240),
                          Color.fromRGBO(223, 236, 238, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.toys,
                        color: Color.fromARGB(255, 14, 155, 173),
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: const [
                            Color.fromARGB(255, 220, 187, 125),
                            Color.fromRGBO(204, 235, 240, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "You have 2,000 km this month",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 102, 100, 100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Accumulated Kilometer",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "192802",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Place",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Kilometer",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Flerwows smoothai ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "4,800",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jeeb pao pub",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "3,754",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Khlong Bang Luang",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "3,754",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                            "How to get more Kilometers",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // เช็ค index เพื่อเปิดหน้าที่ต้องการเมื่อไอคอนถูกแตะ
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DiscoveryPage()),
        );
      } else if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TicketPage()),
        );
      }
      Navigator.pop(context); // เรียกใช้ Navigator.pop เพื่อกลับไปยังหน้าที่อยู่หลังจากหน้า TicketPage

    });
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color.fromRGBO(204, 235, 240, 1),
      color: Color.fromARGB(255, 88, 139, 138),
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(Icons.search, size: 26, color: Colors.white),
        Icon(Icons.home, size: 26, color: Colors.white),
        Icon(Icons.person, size: 26, color: Colors.white),
        Icon(Icons.confirmation_number, size: 26, color: Colors.white),
      ],
      onTap: _onItemTapped, // เรียกใช้ฟังก์ชัน _onItemTapped เมื่อไอคอนถูกแตะ
    );
  }
}
