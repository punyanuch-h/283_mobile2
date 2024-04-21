// import 'package:flutter/material.dart';
// import 'package:phrase2/widgets/forDetails.dart';
// import 'package:phrase2/widgets/detail_place.dart';
// import 'package:phrase2/screens/discovery.dart';
// import 'package:phrase2/widgets/setting_title.dart';
// import 'package:phrase2/screens/detailKhlong.dart';
// import 'package:phrase2/screens/ticket_page.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// // import 'package:phrase2/widgets/fordetailTest.dart';

// class DetailsPage extends StatelessWidget {
//   // const DetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//         image: AssetImage('assets/images/googlemap.jpg'),
//         fit: BoxFit.cover,
//         opacity: 0.9,
//       )),
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(30),
//           child: Column(
//             children: [
//               Scaffold(
//                   backgroundColor: Colors.transparent,
//                   appBar: PreferredSize(
//                     preferredSize: Size.fromHeight(90),
//                     child: DetailAppbar(),
//                     // child: DetailAppbar(),
//                   ),
//                   bottomNavigationBar: KhlongBangLuang()),
//             ],
//           ),
//         ),
        
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:phrase2/screens/homepage3.dart';
import 'package:phrase2/utilities/colors.dart';
import 'package:phrase2/widgets/forDetails.dart';
import 'package:phrase2/widgets/detail_place.dart';
import 'package:phrase2/screens/discovery.dart';
import 'package:phrase2/widgets/setting_title.dart';
import 'package:phrase2/screens/detailKhlong.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:phrase2/widgets/wander_bottom_bar.dart';
// import 'package:phrase2/widgets/fordetailTest.dart';

class DetailsPage extends StatelessWidget {
  // const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/googlemap.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30), // Adjust the height as needed
            DetailAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: KhlongBangLuang(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: theme_blue,
        color: Color.fromARGB(255, 88, 139, 138),
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.search, size: 26, color: Colors.white),
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.person, size: 26, color: Colors.white),
          Icon(Icons.confirmation_number, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscoveryPage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage3()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TicketPage()),
            );
          }
        },
      ),
    );
  }
}


