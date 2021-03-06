import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pro_health/doctor/views/bottombar/profile/profile_doctor.dart';
import 'package:pro_health/doctor/views/dashboard/earnings/earnings.dart';
import 'package:pro_health/doctor/views/dashboard/consultation_history/consultation_history.dart';
import 'package:pro_health/doctor/views/dashboard/online_consultancy/online_consultancy.dart';
import 'package:pro_health/doctor/views/dashboard/case_exchange/case_exchange.dart';
import 'package:pro_health/doctor/views/drawer/custom_drawer_doctor.dart';
import 'package:pro_health/base/utils/constants.dart';

class Home extends StatefulWidget {
  static String tag = 'Home';

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var rating = 5.0;

  @override
  Widget build(BuildContext context) {
    Widget appBar = AppBar(
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
            child: Image.asset('assets/icons/doctor/homebarlogo.png',
                fit: BoxFit.fitHeight),
          ),
        ),
      ),
      elevation: 2.0,
      backgroundColor: kBaseColor,
      iconTheme: IconThemeData(color: kTitleColor),
      toolbarHeight: 50,
      actions: <Widget>[
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: PopupMenuButton(
            icon: Container(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60.0,
                child: Image.asset('assets/icons/doctor/doctorimg.png'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: kBaseColor,
                  width: 0.8,
                ),
              ),
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'ViewProfile',
                  child: Text('View Profile'),
                ),
                PopupMenuItem<String>(
                  value: 'EditProfile',
                  child: Text('Edit Profile'),
                ),
              ];
            },
            onSelected: (result) {
              if (result == 'ViewProfile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDoctor()),
                );
              } else if (result == 'EditProfile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDoctor()),
                );
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 0.0, right: 10.0),
          child: Container(
            height: 50,
            width: 35,
            child: IconButton(
              padding: EdgeInsets.all(2),
              icon: Icon(
                Icons.notifications_active_rounded,
                size: 28,
              ),
              splashRadius: 20,
              color: kTitleColor,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
    final swiperSlide = Container(
      height: 265.0,
      child: Swiper(
        outer: false,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Image.asset(
              "assets/icons/doctor/homebg1.png",
              fit: BoxFit.cover,
            ),
          );
        },
        pagination: new SwiperPagination(
          margin: new EdgeInsets.all(5.0),
          builder: SwiperPagination.dots,
        ),
        itemCount: 5,
        autoplay: true,
        autoplayDelay: 3000,
      ),
    );
    final cardWithDividerRow1 = Row(
      children: [
        Expanded(
          child: Container(
            width: 195,
            height: 132,
            padding:
                EdgeInsets.only(top: 10.0, left: 20.0, bottom: 6.0, right: 6.0),
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
                      child: Image.asset(
                          'assets/icons/doctor/onlineconsultancy.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'ONLINE CONSULTANCY',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 12.0,
                          color: kBodyTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
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
            padding:
                EdgeInsets.only(top: 10.0, left: 6.0, bottom: 6.0, right: 20.0),
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
                      child: Image.asset(
                          'assets/icons/doctor/consultationhistory.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'CONSULTATION HISTORY',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 12.0,
                          color: kBodyTextColor,
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
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
            padding:
                EdgeInsets.only(top: 6.0, left: 20.0, bottom: 10.0, right: 6.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kDashBoxColor,
              elevation: 12,
              onPressed: () {
                Navigator.of(context).pushNamed(CaseExchange.tag);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35.0,
                      child: Image.asset('assets/icons/doctor/cexchange.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'CASE EXCHANGE',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 12.0,
                          color: kBodyTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
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
            padding:
                EdgeInsets.only(top: 6.0, left: 6.0, bottom: 10.0, right: 20.0),
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
                      child: Image.asset('assets/icons/doctor/myearnings.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'MY EARNINGS',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 12.0,
                          color: kBodyTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      drawer: CustomDrawerDoctor(),
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            swiperSlide,
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  cardWithDividerRow1,
                  cardWithDividerRow2,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
