import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:phrase2/models/recommended_places_model.dart'; // เรียกใช้ไฟล์ฐานข้อมูล

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated( 
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: recommendedPlaces.length, // ใช้ความยาวของฐานข้อมูลเป็นจำนวนรายการ
        itemBuilder: (context, index) {
          final place = recommendedPlaces[index]; // เรียกใช้ข้อมูลแต่ละสถานที่จาก index
          return SizedBox(
            width: 320,
            child: Card(
              elevation: 0.4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          place.image, // image
                          // width: double.maxFinite,
                          width: 100,
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            place.location, // location
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          Text(
                            place.rating.toString(), // rating
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            place.text, // text
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
      ),
    );
  }
}
