// import 'package:flutter/material.dart';
// import 'package:phrase2/screens/detail.dart';
// import 'package:phrase2/utilities/colors.dart';
// import 'package:phrase2/widgets/detail_place.dart';
// // import 'package:phrase2/screens/review.dart';

// class DetailAppbar2 extends StatefulWidget {
//   @override
//   _DetailAppbarState createState() => _DetailAppbarState();
// }

// class _DetailAppbarState extends State<DetailAppbar2> {
//   bool _showPopup = false;
//   List<bool> _selectedCircles = List.filled(8, false);

//   void _togglePopup() {
//     Navigator.push(
//       context,
//       OverlaySupportEntry(
//         builder: (context) => buildPopup(
//           context,
//           _showPopup,
//           _selectedCircles,
//           _selectCircle,
//         ),
//       ),
//     );
//   }

//   void _selectCircle(int index) {
//     setState(() {
//       _selectedCircles[index] = !_selectedCircles[index];
//       if (_selectedCircles[index]) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => DetailsPage()),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           InkWell(
//             onTap: _togglePopup,
//             child: Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: theme_blue,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: Icon(
//                 Icons.emoji_emotions_rounded,
//                 color: Colors.black,
//                 size: 28,
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: theme_blue,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//               child: Icon(
//                 Icons.bookmark_add_rounded,
//                 color: Colors.black,
//                 size: 28,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );

//     // แสดง Pop up 
//     if (_showPopup) {
//       return Stack(
//         children: [
//           // Overlay สีดำโปร่งแสง
//           Positioned.fill(
//             child: GestureDetector(
//               onTap: () => Navigator.pop(context),
//             ),
//           ),
//           // วงกลมสีขาว
//           Center(
//             child: Container(
//               width: 250,
//               height: 250,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(150),
//               ),
//               child: GridView.count(
//                 crossAxisCount: 4,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//                 children: List.generate(8, (index) {
//                   return GestureDetector(
//                     onTap: () => _selectCircle(index),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: _selectedCircles[index] ? Colors.blue : Colors.grey[200],
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Icon(Icons.home, color: Colors.white),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ),
//           // ปุ่มปิด Pop up (กากบาท)
//           Positioned(
//             top: 20,
//             right: 20,
//             child: GestureDetector(
//               onTap: () => Navigator.pop(context),
//               child: Icon(
//                 Icons.close,
//                 size: 30,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
