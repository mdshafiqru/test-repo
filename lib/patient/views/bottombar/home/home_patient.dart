import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:pro_health/doctor/views/auth/signin/signin_doctor.dart';
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
import 'package:smooth_star_rating/smooth_star_rating.dart';

const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class HomePatient extends StatefulWidget {
  static String tag = 'HomePatient';

  static final controller = PageController(
    initialPage: 1,
  );

  @override
  HomePatientState createState() => HomePatientState();
}

class HomePatientState extends State<HomePatient> {
  PageController controller;
  var rating = 5.0;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      centerTitle: true,
      title: Container(
        height: 45,
        width: 280,
        padding: EdgeInsets.only(right: 10),
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
        SizedBox(
          width: 90,
          height: 50,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                    color: kTitleColor, width: 0.5, style: BorderStyle.solid),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('');
              },
              padding:
                  EdgeInsets.only(left: 12, top: 4.0, bottom: 2.0, right: 12),
              color: kBaseColor,
              child: Text('বাংলা',
                  style: TextStyle(
                      fontFamily: "Segoe",
                      letterSpacing: 0.5,
                      fontSize: 15,
                      color: kTextLightColor)),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 35,
          child: Container(
            padding: EdgeInsets.only(left: 0.0, right: 10.0),
            child: Icon(
              Icons.notifications_active,
              size: 30,
              color: kTitleColor,
            ),
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
                    Navigator.of(context).pushNamed(HomePatient.tag);
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

    final swiperSlide = Container(
      height: 265.0,
      padding: EdgeInsets.all(8),
      child: PageIndicatorContainer(
        key: key,
        child: PageView(
          children: <Widget>[
            Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homebg1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              height: 260,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homebg1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              height: 260,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homebg1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              height: 260,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homebg1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              height: 260,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homebg1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
          controller: controller,
          reverse: false,
        ),
        align: IndicatorAlign.bottom,
        length: 5,
        indicatorSpace: 10.0,
        padding: const EdgeInsets.all(10),
        indicatorColor: Colors.white,
        indicatorSelectorColor: kButtonColor,
        shape: IndicatorShape.circle(size: 12),
      ),
    );

    final searchDoctor = Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        initialValue: '',
        style:
            TextStyle(fontFamily: "Segoe", fontSize: 18, color: Colors.black),
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: kDashBoxColor,
          hintText: 'Search by Doctor/ Hospital/ Disease',
          hintStyle: TextStyle(
              fontFamily: 'Segoe', fontSize: 18, fontWeight: FontWeight.w500),
          contentPadding:
              EdgeInsets.only(left: 10.0, top: 3.0, right: 10.0, bottom: 3.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
          prefixIcon: Container(
            child: Icon(
              Icons.search_rounded,
              size: 26,
            ),
          ),
        ),
      ),
    );

    final viewLabel = Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 50),
                child: Text(
                  'Available for consultation now',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 18,
                      color: kBaseColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 35, right: 15),
                child: Text(
                  'View all',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 1.0),
            child: Divider(
              color: Colors.black,
              height: 0.0,
              thickness: 0.8,
              indent: 15.0,
              endIndent: 15.0,
            ),
          ),
        ],
      ),
    );

    final doctorCard = Container(
      height: 200,
      padding: EdgeInsets.only(left: 6, top: 10, right: 5, bottom: 2),
      child: PageView(
        children: [
          Container(
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 4,
                  color: kCardTitleColor,
                  child: Container(
                    width: 119,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 2, top: 4, right: 2, bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage('assets/doctorimg.png'),
                                    fit: BoxFit.contain),
                              ),
                              child: Align(
                                alignment: Alignment(1.2, -0.8),
                                child: Container(
                                  height: 16,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kOnlineColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: new Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: 'Segoe',
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Prof. Mohammed Hanif',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 12.0,
                                color: kBaseColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 80,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 10,
                                color: kWhiteShadow),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: rating,
                              size: 15.0,
                              isReadOnly: true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0),
                        ),
                        Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kBaseColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 2),
                          child: new Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                letterSpacing: 0.5,
                                fontSize: 12,
                                color: kWhiteShadow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        controller: controller,
        physics: BouncingScrollPhysics(),
        pageSnapping: false,
      ),
    );

    final latestUpdate = Container(
      height: 70,
      padding: EdgeInsets.only(left: 10, top: 4, right: 10, bottom: 10),
      child: PageView(
        children: [
          Card(
            elevation: 6,
            child: Row(
              children: [
                Container(
                  height: 47,
                  width: 140,
                  padding:
                      EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 10),
                  color: kBaseColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Covid-19 Update',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 220,
                  padding:
                      EdgeInsets.only(left: 2, top: 10, right: 5, bottom: 10),
                  color: Colors.white,
                  child: Marquee(
                    text:
                        'Bangladesh Coronavirus Cases: 577,241 Deaths: 8,738 Recovered: 525,694.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    showFadingOnlyWhenScrolling: true,
                    fadingEdgeStartFraction: 0.1,
                    fadingEdgeEndFraction: 0.1,
                    numberOfRounds: 500,
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 6,
            child: Row(
              children: [
                Container(
                  height: 47,
                  width: 140,
                  padding:
                      EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 10),
                  color: kBaseColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Latest App Update',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 220,
                  padding:
                      EdgeInsets.only(left: 2, top: 10, right: 5, bottom: 10),
                  color: Colors.white,
                  child: Marquee(
                    text:
                        'Bangladesh Coronavirus Cases: 577,241 Deaths: 8,738 Recovered: 525,694. '
                        'Bangladesh Coronavirus Cases: 577,241 Deaths: 8,738 Recovered: 525,694.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    showFadingOnlyWhenScrolling: true,
                    fadingEdgeStartFraction: 0.1,
                    fadingEdgeEndFraction: 0.1,
                    numberOfRounds: 500,
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 6,
            child: Row(
              children: [
                Container(
                  height: 47,
                  width: 140,
                  padding:
                      EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 10),
                  color: kBaseColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ProHealth Update',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 42,
                  width: 220,
                  padding:
                      EdgeInsets.only(left: 2, top: 10, right: 5, bottom: 10),
                  color: Colors.white,
                  child: Marquee(
                    text:
                        'Bangladesh Coronavirus Cases: 577,241 Deaths: 8,738 Recovered: 525,694. '
                        'Bangladesh Coronavirus Cases: 577,241 Deaths: 8,738 Recovered: 525,694.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    showFadingOnlyWhenScrolling: true,
                    fadingEdgeStartFraction: 0.1,
                    fadingEdgeEndFraction: 0.1,
                    numberOfRounds: 500,
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
              ],
            ),
          ),
        ],
        controller: controller,
        physics: BouncingScrollPhysics(),
        pageSnapping: false,
        scrollDirection: Axis.vertical,
      ),
    );

    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            swiperSlide,
            searchDoctor,
            viewLabel,
            doctorCard,
            latestUpdate,
          ],
        ),
      ),
    );
  }
}
