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

const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class PharmaUpdates extends StatefulWidget {
  static String tag = 'PharmaUpdates';
  @override
  PharmaUpdatesState createState() => new PharmaUpdatesState();
}

class PharmaUpdatesState extends State<PharmaUpdates> {

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

    final pharmaUpdateLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/pharmaupdate.png'),
        ),
      ),
    );

    final pharmaUpdatesTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Pharma Updates',
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

    final pharmaNewsImageTitle1 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 2.0, right: 10.0),
      child: Text('OPEN PLEDGE TO FIGHT COVID-19',
        style: TextStyle(fontFamily: 'Nunito-Bold', color: kBaseColor, letterSpacing: 0.5, fontSize: 16, fontWeight: FontWeight.w600), textAlign: TextAlign.left,
      ),
    );
    final verticalTitleDivider = Container(
      child: Divider(
        color: kBaseColor,
        height: 2.0,
        thickness: 1.0,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    final pharmaNewsImage1 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/pharmawidthimage.png'), fit: BoxFit.fill),
        ),
      ),
    );

    final pharmaNewsImageTitle2 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 2.0, right: 10.0),
      child: Text('OPEN PLEDGE TO FIGHT COVID-19',
        style: TextStyle(fontFamily: 'Nunito-Bold', color: kBaseColor, letterSpacing: 0.5, fontSize: 16, fontWeight: FontWeight.w600), textAlign: TextAlign.left,
      ),
    );

    final pharmaNewsImage2 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/pharmawidthimage.png'), fit: BoxFit.fill),
        ),
      ),
    );

    final newBrandImageTitle1 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 2.0, right: 10.0),
      child: Text('NEW BRANDS IN BANGLADESH 2021',
        style: TextStyle(fontFamily: 'Nunito-Bold', color: kBaseColor, letterSpacing: 0.5, fontSize: 16, fontWeight: FontWeight.w600), textAlign: TextAlign.left,
      ),
    );
    final newBrandImage1 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/brandwidthimage.png'), fit: BoxFit.fill),
        ),
      ),
    );

    final newBrandImageTitle2 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 2.0, right: 10.0),
      child: Text('NEW BRANDS IN BANGLADESH 2021',
        style: TextStyle(fontFamily: 'Nunito-Bold', color: kBaseColor, letterSpacing: 0.5, fontSize: 16, fontWeight: FontWeight.w600), textAlign: TextAlign.left,
      ),
    );
    final newBrandImage2 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/brandwidthimage.png'), fit: BoxFit.fill),
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
            centerTitle: true,
            toolbarHeight: 50,
            title: Text('Pharma Updates', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
          ),
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Column(
              children: [
                pharmaUpdateLogo,
                pharmaUpdatesTitle,
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
                      borderRadius: BorderRadius.circular(30),
                      color: kBaseColor),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Pharma News", style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("New Brand", style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
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
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            pharmaNewsImageTitle1,
                            verticalTitleDivider,
                            pharmaNewsImage1,
                            pharmaNewsImageTitle2,
                            verticalTitleDivider,
                            pharmaNewsImage2,
                            pharmaNewsImageTitle2,
                            verticalTitleDivider,
                            pharmaNewsImage2,
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            newBrandImageTitle1,
                            verticalTitleDivider,
                            newBrandImage1,
                            newBrandImageTitle2,
                            verticalTitleDivider,
                            newBrandImage2,
                            newBrandImageTitle2,
                            verticalTitleDivider,
                            newBrandImage2,
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
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