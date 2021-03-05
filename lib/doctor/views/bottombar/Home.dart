import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pro_health/doctor/views/Dashboard.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/views/auth/signin/signin_doctor.dart';
import 'package:pro_health/doctor/views/bottombar/DoctorProfile.dart';
import 'package:pro_health/doctor/views/dashbox/Earnings.dart';
import 'package:pro_health/doctor/views/dashbox/ConsultationHistory.dart';
import 'package:pro_health/doctor/views/dashbox/OnlineConsultancy.dart';
import 'package:pro_health/doctor/views/dashbox/DrugInfo.dart';
import 'package:pro_health/doctor/views/draweritem/AboutUs.dart';
import 'package:pro_health/doctor/views/draweritem/ActivityStatus.dart';
import 'package:pro_health/doctor/views/draweritem/ContactUs.dart';
import 'package:pro_health/doctor/views/draweritem/Help.dart';
import 'package:pro_health/doctor/views/draweritem/PrivacyAndPolicy.dart';
import 'package:pro_health/doctor/views/draweritem/Reviews.dart';
import 'package:pro_health/doctor/views/draweritem/Settings.dart';
import 'package:pro_health/doctor/views/draweritem/TermsConditions.dart';
import 'package:pro_health/base/utils/constants.dart';

const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class Home extends StatelessWidget {
  static String tag = 'Home';

  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
      centerTitle: true,
      title: Container(
        height: 45,
        width: 270,
        padding: EdgeInsets.only(right: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: kBackgroundColor,
          margin: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 1.5),
            child: Image.asset('assets/homebarlogo.png', fit: BoxFit.fitHeight),
          ),
        ),
      ),
      elevation: 2.0,
      backgroundColor: kBaseColor,
      iconTheme: IconThemeData(color: kTitleColor),
      toolbarHeight: 50,
      actions: <Widget>[
        SizedBox(width: 10,),
        SizedBox(
          width: 50,
          height: 50,
          child: PopupMenuButton(
            icon: Container(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60.0,
                child: Image.asset('assets/doctorimg.png'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: kBaseColor,
                  width: 0.8,
                ),
              ),
            ),
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem<String> (
                  value: 'ViewProfile',
                  child: Text('View Profile'),
                ),
                PopupMenuItem<String> (
                  value: 'EditProfile',
                  child: Text('Edit Profile'),
                ),
              ];
            },
            onSelected: (result) {
              if (result == 'ViewProfile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorProfile()),
                );
              }
              else if (result == 'EditProfile'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorProfile()),
                );
              }
            },
          ),
        ),
        SizedBox(
          height: 50,
          width: 35,
          child: Container(
            padding: EdgeInsets.only(left: 0.0, right: 10.0),
            child: Icon(Icons.notifications_active, size: 30, color: kTitleColor,),
          ),
        ),
      ],
    );

    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: false,
        children: <Widget>[
          Container(
            height: 175,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kBaseColor,
              ),
              accountName: const Text(_AccountName, style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
              accountEmail: const Text(_AccountEmail, style: TextStyle(fontFamily: 'Segoe', fontSize: 13),),
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
            child: Column(children: <Widget>[
              ListTile(
                dense: true,
                title: Text("Home", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/homed.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Dashboard.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Profile", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700)),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/profiled.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(DoctorProfile.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Active Status", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/statusd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(ActivityStatus.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Terms and Conditions", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/termsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(TermsConditions.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Privacy and Policy", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/privacyd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(PrivacyAndPolicy.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("About Us", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/aboutd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(AboutUs.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Contact Us", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/contactd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(ContactUs.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Help", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/helpd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Help.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Settings", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/settingsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Settings.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Version v-0.0.1", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/versiond.png'),
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, "");
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Sign Out", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/signoutd.png'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(SignInDoctor.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Renew", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/renewd.png'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('');
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: false,
                title: Text("Reviews", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/reviewsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Reviews.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
            ],),
          ),
        ],
      ),
    );

    final homeBg = Container(
      height: 260,
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/homebg1.png'), fit: BoxFit.cover),
        ),
      ),
    );

    final cardWithDividerRow1 = Row(
      children: [
        Expanded(
          child: Container(
            width: 195,
            height: 132,
            padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 6.0, right: 6.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kDashBoxColor,
              elevation: 12,
              onPressed: () {
                Navigator.of(context).pushNamed(OnlineConsultancy.tag);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35.0,
                      child: Image.asset('assets/onlineconsultancy.png'),
                    ),
                  ),
                  Container(
                    child: Text('ONLINE CONSULTANCY',
                      style: TextStyle(fontFamily: 'Segoe', fontSize: 12.0, color: kBodyTextColor, letterSpacing: 0.5, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 195,
            height: 132,
            padding: EdgeInsets.only( top: 10.0, left: 6.0, bottom: 6.0, right: 20.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kDashBoxColor,
              elevation: 12,
              onPressed: () {
                Navigator.of(context).pushNamed(ConsultationHistory.tag);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35.0,
                      child: Image.asset('assets/consultationhistory.png'),
                    ),
                  ),
                  Container(
                    child: Text('CONSULTATION HISTORY',
                      style: TextStyle(fontFamily: 'Segoe', fontSize: 12.0, color: kBodyTextColor, letterSpacing: 0.5, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final cardWithDividerRow2 = Row(
      children: [
        Expanded(
          child: Container(
            width: 195,
            height: 132,
            padding: EdgeInsets.only(top: 6.0, left: 20.0, bottom: 10.0, right: 6.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kDashBoxColor,
              elevation: 12,
              onPressed: () {
                Navigator.of(context).pushNamed(DrugInfo.tag);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35.0,
                      child: Image.asset('assets/druginfo.png'),
                    ),
                  ),
                  Container(
                    child: Text('DRUG INFO',
                      style: TextStyle(fontFamily: 'Segoe', fontSize: 12.0, color: kBodyTextColor, letterSpacing: 0.5, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 195,
            height: 132,
            padding: EdgeInsets.only( top: 6.0, left: 6.0, bottom: 10.0, right: 20.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kDashBoxColor,
              elevation: 12,
              onPressed: () {
                Navigator.of(context).pushNamed(Earnings.tag);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35.0,
                      child: Image.asset('assets/myearnings.png'),
                    ),
                  ),
                  Container(
                    child: Text('MY EARNINGS',
                      style: TextStyle(fontFamily: 'Segoe', fontSize: 12.0, color: kBodyTextColor, letterSpacing: 0.5, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        /*width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(7.0),

        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kBackgroundColor,
            kBackgroundColor,
          ]),
        ),*/
        child: ListView(
          children: <Widget>[
            homeBg,
            SizedBox(height: 18,),
            cardWithDividerRow1,
            cardWithDividerRow2,
          ],
        ),
      ),
    );
  }
}