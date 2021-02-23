import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/ui/pages/draweritem/AboutUs.dart';
import 'package:pro_health/ui/pages/draweritem/ActivityStatus.dart';
import 'package:pro_health/ui/pages/draweritem/ContactUs.dart';
import 'package:pro_health/ui/pages/draweritem/Help.dart';
import 'package:pro_health/ui/pages/draweritem/PrivacyAndPolicy.dart';
import 'package:pro_health/ui/pages/draweritem/Reviews.dart';
import 'package:pro_health/ui/pages/draweritem/Settings.dart';
import 'package:pro_health/ui/pages/draweritem/TermsConditions.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

import 'package:pro_health/ui/pages/Dashboard.dart';
import 'package:pro_health/ui/pages/SignIn.dart';
import 'DoctorProfile.dart';
import 'message/data/ChatList.dart';
import 'message/widget/ChatList.dart';


const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class Appointment extends StatefulWidget {
  static String tag = 'Appointment';
  @override
  AppointmentState createState() => new AppointmentState();
}

class AppointmentState extends State<Appointment> {

  @override
  Widget build(BuildContext context) {

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
                  Navigator.of(context).pushNamed(SignIn.tag);
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
      child: Text('Appointment',
        style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
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

    // Appointment Tab

    final topCard = Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Column(
          children: [
            Container(
              height: 65,
              color: kBaseColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12.0, top: 10.0),
                    child: Text('Appointment Request', style: TextStyle(fontSize: 16, color: kTitleColor),),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, size: 20, color: kTitleColor),
                        SizedBox(width: 2.0,),
                        Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 16, color: kTitleColor),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: kBaseColor,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 17.0,
                        child: Image.asset('assets/doctorimg.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 70),
              child: Container(
                height: 30,
                width: 220,
                decoration: BoxDecoration(
                    color: kTitleColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: new Text(
                  "Problem: ৩দিন যাবত জ্বর",
                  style: TextStyle(fontFamily: 'Segoe', fontWeight: FontWeight.w600, letterSpacing: 0.5, fontSize: 16,),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 185,
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('');
                      },
                      padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                      color: kButtonColor,
                      child: Text('Accept', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kWhiteShadow)),
                    ),
                  ),
                  Container(
                    width: 185,
                    padding: EdgeInsets.only(left: 30.0, right: 10.0),
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(
                            color: kBaseColor,
                            width: 0.8,
                            style: BorderStyle.solid
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('');
                      },
                      padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                      color: kWhiteShadow,
                      child: Text('Decline', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kBaseColor)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    final nextAppointmentTitle = Container(
      padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0, bottom: 10.0),
      child: Text('Next Appointments', style: TextStyle(fontSize: 20, color: kTextLightColor),),
    );
    final patientsCard = Container(
      height: 60,
      width: 395,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: kBaseColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18.0,
                child: Image.asset('assets/doctorimg.png'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
                ),
                Container(
                  child: Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 14),),
                )
              ],
            ),
          ),
          SizedBox(width: 75,),
          Container(
              child: RawMaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 24,
                ),
                padding: EdgeInsets.all(8),
                shape: CircleBorder(),
              )
          ),
        ],
      ),
    );
    final awaitedPatients = Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 30,),
        ],
      ),
    );

    // Message Tab

    final messageHome = Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: chatList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16, bottom: 20),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  child: ChatWidget(chat: chatList[index],),
                );
              },
            ),
          ],
        ),
      ),
    );

    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: drawer,
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: kBaseColor,
            iconTheme: IconThemeData(color: kTitleColor),
            shadowColor: Colors.teal,
            centerTitle: true,
            toolbarHeight: 50,
            title: Text('Appointment', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
          ),
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Column(
              children: [
                appointmentLogo,
                appointmentTitle,
                verticalDivider,
                SizedBox(height: 10,),
                TabBar(
                  unselectedLabelColor: kBaseColor,
                  labelColor: kTitleColor,
                  indicatorColor: kBaseColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [kBaseColor, kBaseColor]),
                      borderRadius: BorderRadius.circular(50),
                      color: kBaseColor),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Appointment", style: TextStyle(fontFamily: 'Segoe', fontSize: 16,),),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Message", style: TextStyle(fontFamily: 'Segoe', fontSize: 16,),),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Container(
                        child: ListView(
                          children: [
                            topCard,
                            nextAppointmentTitle,
                            awaitedPatients,
                          ],
                        ),
                      ),
                      Container(
                        child: ListView(
                          children: [
                            messageHome,
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}