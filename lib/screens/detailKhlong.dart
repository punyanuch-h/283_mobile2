import 'package:flutter/material.dart';
import 'package:phrase2/widgets/forDetails.dart';
import 'package:phrase2/widgets/detail_place.dart';
import 'package:phrase2/screens/discovery.dart';
import 'package:phrase2/widgets/setting_title.dart';
import 'package:phrase2/screens/detailKhlong.dart';
import 'package:phrase2/screens/ticket_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:phrase2/widgets/fordetailTest.dart';

class DetailsPage extends StatelessWidget {
  // const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/googlemap.jpg'),
        fit: BoxFit.cover,
        opacity: 0.9,
      )),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Column(
            children: [
              Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(90),
                    child: DetailAppbar(),
                    // child: DetailAppbar(),
                  ),
                  bottomNavigationBar: KhlongBangLuang()),
            ],
          ),
        ),
        
      ),
    );
  }
}
