import 'package:flutter/material.dart';
import 'package:pro_health/doctor/views/bottombar/profile/profile_doctor.dart';
import 'package:pro_health/doctor/views/drawer/about_us.dart';
import 'package:pro_health/doctor/views/drawer/activity_status.dart';
import 'package:pro_health/doctor/views/drawer/contact_us.dart';
import 'package:pro_health/doctor/views/drawer/help.dart';
import 'package:pro_health/doctor/views/drawer/privacy_and_policy.dart';
import 'package:pro_health/doctor/views/drawer/reviews.dart';
import 'package:pro_health/doctor/views/drawer/settings.dart';
import 'package:pro_health/doctor/views/drawer/terms_conditions.dart';
import 'package:pro_health/base/utils/constants.dart';

import 'package:pro_health/doctor/views/auth/signin/signin_doctor.dart';
import 'package:pro_health/patient/views/dashboard/dashboard_patient.dart';

const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class AppointmentPatient extends StatefulWidget {
  static String tag = 'AppointmentPatient';
  @override
  AppointmentPatientState createState() => new AppointmentPatientState();
}

class AppointmentPatientState extends State<AppointmentPatient> {
  @override
  Widget build(BuildContext context) {
    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: false,
        children: <Widget>[
          Container(
            height: 210,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kBaseColor,
              ),
              accountName: const Text(
                _AccountName,
                style: TextStyle(fontFamily: 'Segoe', fontSize: 16),
              ),
              accountEmail: const Text(
                _AccountEmail,
                style: TextStyle(fontFamily: 'Segoe', fontSize: 13),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundColor: kBaseColor,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: kTitleColor,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25.0,
                    child: Image.asset('assets/doctorimg.png'),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: kBackgroundColor,
            child: Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/homed.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(DashboardPatient.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text("Profile",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700)),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/profiled.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ProfileDoctor.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Favourite",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/favourited.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ActivityStatus.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Recent",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/recentd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(TermsConditions.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Consultation History",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/chistoryd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(PrivacyAndPolicy.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Medicine Remainder",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/remainderd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(AboutUs.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/termsd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ContactUs.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/contactd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Help.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/settingsd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Settings.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Version v-0.0.1",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/versiond.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "");
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Sign Out",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/signoutd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(SignInDoctor.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: true,
                  title: Text(
                    "Complaint",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/complaintd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
                ListTile(
                  dense: false,
                  title: Text(
                    "Reviews",
                    style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kShadowColor,
                    radius: 13,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 12.0,
                      child: Image.asset('assets/icons/patient/reviewsd.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Reviews.tag);
                  },
                ),
                Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor),
              ],
            ),
          ),
        ],
      ),
    );

    final appointmentLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/appointments.png'),
        ),
      ),
    );

    final appointmentTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Appointment',
        style: TextStyle(
            fontFamily: 'Segoe',
            color: kTextLightColor,
            letterSpacing: 0.5,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );

    final verticalDivider = Container(
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    return Scaffold(
      drawer: drawer,
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        backgroundColor: kBaseColor,
        shadowColor: Colors.teal,
        iconTheme: IconThemeData(color: kTitleColor),
        toolbarHeight: 50,
        title: Text(
          'Appointment',
          style:
              TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            appointmentLogo,
            appointmentTitle,
            verticalDivider,
          ],
        ),
      ),
    );
  }
}
