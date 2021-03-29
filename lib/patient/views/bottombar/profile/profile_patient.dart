import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
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

class ProfilePatient extends StatefulWidget {
  static String tag = 'ProfilePatient';
  @override
  ProfilePatientState createState() => new ProfilePatientState();
}

class ProfilePatientState extends State<ProfilePatient> {
  var rating = 4.5;
  double radius = 32;
  double iconSize = 20;
  double distance = 2;

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

    final patientImageEdit = Container(
      child: Row(
        children: [
          Container(
            width: 120,
            padding: EdgeInsets.only(left: 18.0),
          ),
          Container(
            width: 150,
            padding:
                EdgeInsets.only(left: 10.0, top: 2.0, right: 10.0, bottom: 1.0),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: kBodyTextColor,
                    child: CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 41,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: Image.asset('assets/apatient.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -(radius - distance),
                    right: -(radius + iconSize + distance),
                    bottom: -iconSize - distance - 60,
                    left: 10,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xff6ECEC0),
                      size: iconSize - 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            height: 35,
            padding: EdgeInsets.only(left: 50.0),
            child: Center(
              child: RawMaterialButton(
                elevation: 5.0,
                child: Image.asset('assets/edit.png'),
                shape: CircleBorder(),
                //fillColor: Colors.white,
                padding: const EdgeInsets.all(6.0),
                onPressed: () {
                  //editDoctor;
                },
              ),
            ),
          ),
        ],
      ),
    );

    final patientName = Container(
      child: Text(
        'Md Jahidul Hasan',
        style: TextStyle(
            fontFamily: 'Segoe',
            color: kBaseColor,
            letterSpacing: 0.5,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );

    final profileProgress = Container(
      height: 20,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: new LinearPercentIndicator(
          width: MediaQuery.of(context).size.width - 100,
          animation: true,
          lineHeight: 6.0,
          //leading: new Text("left content"),
          trailing: new Text(
            "90.0%",
            style: TextStyle(
                fontSize: 18, color: kBaseColor, fontWeight: FontWeight.bold),
          ),
          animationDuration: 2500,
          percent: 0.9,
          /*center: Text(
          "90.0%",
          style: TextStyle(color: Colors.white),
        ),*/
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: kBaseColor,
        ),
      ),
    );

    final profileButton = Container(
      height: 30,
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 130),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed('');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.only(left: 5, top: 3, right: 5, bottom: 5),
        color: kBaseColor,
        child: Text('My Profile',
            style: TextStyle(
                fontFamily: "Segoe",
                letterSpacing: 0.5,
                fontSize: 15,
                color: kTitleColor,
                fontWeight: FontWeight.w700)),
      ),
    );

    final personalInfo = Card(
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          children: [
            Container(
              height: 45,
              color: kCardTitleColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 12.0, top: 8.0, right: 12, bottom: 8),
                    child: Text(
                      'Personal Information',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: kBodyTextColor),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    width: 160,
                    height: 35,
                    padding: EdgeInsets.only(left: 120.0),
                    child: Center(
                      child: RawMaterialButton(
                        elevation: 5.0,
                        child: Image.asset('assets/edit.png'),
                        shape: CircleBorder(),
                        //fillColor: Colors.white,
                        padding: const EdgeInsets.all(6.0),
                        onPressed: () {
                          //editDoctor;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 4, right: 10, bottom: 1),
                        child: Text(
                          'District :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 210, right: 10),
                        child: Text(
                          'Gaibandha',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Thana :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 215, right: 10),
                        child: Text(
                          'Polashbari',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Gender :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 244, right: 10),
                        child: Text(
                          'Male',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Blood Group :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 225, right: 10),
                        child: Text(
                          'O+',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Weight :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 242, right: 10),
                        child: Text(
                          '60 kg',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Date of Birth :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 168, right: 10),
                        child: Text(
                          '01-01-1998',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Mobile :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 178, right: 10),
                        child: Text(
                          '+880 1*********',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Email :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 162, right: 10),
                        child: Text(
                          '*********@mail.com',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    final personalHistory = Card(
      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          children: [
            Container(
              height: 45,
              color: kCardTitleColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 12.0, top: 8.0, right: 12, bottom: 8),
                    child: Text(
                      'Personal History',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: kBodyTextColor),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    width: 200,
                    height: 35,
                    padding: EdgeInsets.only(left: 150.0),
                    child: Center(
                      child: RawMaterialButton(
                        elevation: 5.0,
                        child: Image.asset('assets/edit.png'),
                        shape: CircleBorder(),
                        //fillColor: Colors.white,
                        padding: const EdgeInsets.all(6.0),
                        onPressed: () {
                          //editDoctor;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 4, right: 10, bottom: 1),
                        child: Text(
                          'Allergies :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 210, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Occupation :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 194, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Smoking :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 212, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Marital Status :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 184, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Alcohol :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 219, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Exercise :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 218, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 0.0,
                      thickness: 0.5,
                      indent: 0.0,
                      endIndent: 0.0,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 2, right: 10, bottom: 1),
                        child: Text(
                          'Caffeinated Beverage :',
                          style: TextStyle(
                              fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 138, right: 10),
                        child: Text(
                          'Not given',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
          'My Profile',
          style:
              TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            patientImageEdit,
            patientName,
            profileProgress,
            profileButton,
            personalInfo,
            personalHistory,
          ],
        ),
      ),
    );
  }
}
