import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:pro_health/base/utils/constants.dart';

import '../bottombar/appointment/appointment_doctor.dart';
import '../bottombar/profile/DoctorProfile.dart';
import '../bottombar/home/home_doctor.dart';
import '../bottombar/pharma_updates/pharma_updates.dart';
import '../bottombar/prescription/prescription.dart';

class DashboardDoctor extends StatefulWidget {
  static String tag = 'DashboardDoctor';

  @override
  DashboardDoctorState createState() => DashboardDoctorState();
}

class DashboardDoctorState extends State<DashboardDoctor> {
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
            TabItem(icon: Image.asset('assets/icons/doctor/pharmaupdates.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/doctor/pharmaupdatesactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/doctor/appointment.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/doctor/appointmentactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/doctor/home.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/doctor/homeactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/doctor/rx.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/doctor/rxactive.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/doctor/profile.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/doctor/profileactive.png', scale: 12.0,)),
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