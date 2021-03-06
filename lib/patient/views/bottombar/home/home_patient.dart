import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marquee/marquee.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/patient/views/drawer/custom_drawer_patient.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:pro_health/patient/views/bottombar/home/view_doctors.dart';

class HomePatient extends StatefulWidget {
  static String tag = 'HomePatient';

  @override
  HomePatientState createState() => HomePatientState();
}

class HomePatientState extends State<HomePatient> {
  PageController controller;
  var rating = 5.0;

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
            child: Image.asset('assets/icons/patient/homebarlogo.png',
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
              child: Text('???????????????',
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
        autoplayDelay: 1500,
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
          hintText: 'Search by Doctors name/ Hospital/ Disease name',
          hintStyle: TextStyle(
              fontFamily: 'Segoe', fontSize: 14, fontWeight: FontWeight.w500),
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
              InkWell(
                highlightColor: kBackgroundColor,
                hoverColor: kBackgroundColor,
                child: Container(
                  padding: EdgeInsets.only(left: 35, right: 15),
                  child: Text(
                    'View all',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(ViewDoctors.tag);
                },
              ),
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
      drawer: CustomDrawerPatient(),
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
