import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:pro_health/base/utils/constants.dart';

import 'bottombar/Appointment.dart';
import 'bottombar/DoctorProfile.dart';
import 'bottombar/Home.dart';
import 'bottombar/PharmaUpdates.dart';
import 'bottombar/Prescription.dart';

class Dashboard extends StatefulWidget {
  static String tag = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 2;
  List<Widget> listWidgets = [PharmaUpdates(), Appointment(), Home(), Prescription(), DoctorProfile()];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: listWidgets[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: kBaseColor,
          color: Colors.white,
          height: 45,
          top: -15,
          curveSize: 80,
          style: TabStyle.reactCircle,
          items: [
            TabItem(icon: Image.asset('assets/pharmaupdates.png', scale: 12.0,), activeIcon: Image.asset('assets/pharmaupdatesactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/appointment.png', scale: 12.0,), activeIcon: Image.asset('assets/appointmentactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/home.png', scale: 12.0,), activeIcon: Image.asset('assets/homeactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/rx.png', scale: 12.0,), activeIcon: Image.asset('assets/rxactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/profile.png', scale: 12.0,), activeIcon: Image.asset('assets/profileactive.png', scale: 12.0,)),
          ],
          initialActiveIndex: selectedIndex,
          activeColor: kBaseColor,
          onTap: onItemTapped,
        )
    );
  }
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}