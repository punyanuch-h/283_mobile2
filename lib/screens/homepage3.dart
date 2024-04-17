// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter/services.dart'; // Import for logging

// class Homepage2 extends StatefulWidget {
//   const Homepage2({super.key});

//   @override
//   State<Homepage2> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage2> {
//   static const LatLng _pGooglePlex = LatLng(13.8140, 100.0373); // Nakhon Pathom

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           try {
//             GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: _pGooglePlex,
//                 zoom: 13,
//               ),
//               onMapCreated: (GoogleMapController controller) {
//                 // Handle map controller events
//               },
//             );
//           } on PlatformException catch (e) {
//             logMessage('Failed to create GoogleMap: ${e.message}');
//           }
//           logMessage('GoogleMap created successfully');
//           Icon(
//             Icons.home, // ใช้ icon บ้าน
//             color: Colors.red, 
//           ),
//         ],
//       ),
//     );
//   }

//   void logMessage(String message) {
//     print('GoogleMap: $message');
//   }
// }
