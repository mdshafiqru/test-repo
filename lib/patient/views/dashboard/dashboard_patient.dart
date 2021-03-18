import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/patient/views/bottombar/appointment/appointment_patient.dart';
import 'package:pro_health/patient/views/bottombar/drug_info/drug_index_patient.dart';
import 'package:pro_health/patient/views/bottombar/home/home_patient.dart';
import 'package:pro_health/doctor/views/bottombar/profile/profile_doctor.dart';
import 'package:pro_health/patient/views/bottombar/message/message_patient.dart';


class DashboardPatient extends StatefulWidget {
  static String tag = 'DashboardPatient';

  @override
  DashboardPatientState createState() => DashboardPatientState();
}

class DashboardPatientState extends State<DashboardPatient> {
  int selectedIndex = 2;
  List<Widget> listWidgets = [DrugIndexPatient(), AppointmentPatient(), HomePatient(), MessagePatient(), ProfileDoctor()];


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
            TabItem(icon: Image.asset('assets/icons/patient/druginfo.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/patient/druginfo_active.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/patient/appointment.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/patient/appointment_active.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/patient/home.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/patient/home_active.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/patient/message.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/patient/message_active.png', scale: 12.0,)),
            TabItem(icon: Image.asset('assets/icons/patient/profile.png', scale: 12.0,), activeIcon: Image.asset('assets/icons/patient/profile_active.png', scale: 12.0,)),
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