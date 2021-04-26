import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:pro_health/patient/views/bottombar/home/select_patient.dart';

class DoctorProfile extends StatefulWidget {
  static String tag = 'DoctorProfile';
  @override
  DoctorProfileState createState() => new DoctorProfileState();
}

class DoctorProfileState extends State<DoctorProfile> {
  var rating = 4.5;
  double radius = 32;
  double iconSize = 20;
  double distance = 2;

  @override
  Widget build(BuildContext context) {
    final validationImageEdit = Container(
      child: Row(
        children: [
          Container(
            width: 120,
            padding: EdgeInsets.only(left: 18.0),
            child: CircleAvatar(
              backgroundColor: kWhiteShade,
              radius: 23,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22.0,
                child: Image.asset('assets/icons/patient/messagepage.png'),
              ),
            ),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.only(
                left: 10.0, top: 2.0, right: 10.0, bottom: 10.0),
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
                        child: Image.asset('assets/doctorimg.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -(radius + 10),
                    right: -(radius + iconSize + distance),
                    bottom: -iconSize - distance - 65,
                    left: radius - 20,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xff53c8b7),
                      size: iconSize - 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            child: Column(
              children: [
                Container(
                  height: 20,
                  child: Text(
                    'Patient in queue',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        color: Colors.redAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                          color: kBaseColor,
                          width: 1.5,
                          style: BorderStyle.solid),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('');
                    },
                    padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                    color: kBackgroundColor,
                    child: Text(
                      '00',
                      style: TextStyle(
                        fontFamily: "Segoe",
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final verticalDivider = Container(
      child: const Divider(
        color: kTitleTextColor,
        height: 2,
        thickness: 0.5,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );
    final doctorName = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 1.0, right: 0.0, bottom: 0.0),
      child: Text(
        'Prof. Mohammed Hanif',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Segoe',
            fontSize: 20.0,
            letterSpacing: 0.5,
            color: kBaseColor,
            fontWeight: FontWeight.w600),
      ),
    );

    final doctorDegree = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
      child: Text(
        'MBBS, FCPS, FRCP (Edin)',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Segoe',
            fontSize: 18.0,
            color: kBodyTextColor,
            fontWeight: FontWeight.w600),
      ),
    );

    final doctorWorkPlace = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 7.0),
      child: Text(
        'Dhaka Shishu Hospital',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Segoe',
            fontSize: 18.0,
            color: kTextLightColor,
            fontWeight: FontWeight.w600),
      ),
    );

    final specialtyButton = Container(
      width: 120,
      padding: EdgeInsets.only(left: 5, top: 4, right: 5, bottom: 7),
      decoration: BoxDecoration(
        color: kButtonColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(25),
      ),
      alignment: Alignment.center,
      child: new Text(
        "Pediatrician",
        style: TextStyle(
            fontFamily: 'Segoe',
            letterSpacing: 0.5,
            fontSize: 15,
            color: kWhiteShadow),
      ),
    );

    final bmdcNumber = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
      child: Text(
        'BMDC Registration No. 12568',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Segoe',
            fontSize: 18.0,
            color: kTextLightColor,
            fontWeight: FontWeight.w600),
      ),
    );
    final doctorInformation = Container(
      child: Column(
        children: [
          Container(
            padding:
                EdgeInsets.only(left: 6.0, top: 40.0, right: 6.0, bottom: 10.0),
            child: Card(
              borderOnForeground: true,
              color: kConsultationColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 10.0, right: 0.0, bottom: 5.0),
                        child: Text(
                          '   Consultations Number ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 18.0,
                              color: kTitleTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      Container(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black54,
                          thickness: 0.8,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, top: 10.0, right: 0.0, bottom: 5.0),
                          child: Text(
                            '54',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 18.0,
                                color: kTextLightColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
                        child: Text(
                          '   Consultation Fees (Online)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 18.0,
                              color: kTitleTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      Container(
                          height: 30,
                          child: VerticalDivider(
                            color: Colors.black54,
                            thickness: 0.8,
                          )),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
                          child: Text(
                            ' 1,000 TK.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 18.0,
                                color: kTextLightColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
                        child: Text(
                          '   Consultation Fees (Physical)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 18.0,
                              color: kTitleTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      Container(
                          height: 30,
                          child: VerticalDivider(
                            color: Colors.black54,
                            thickness: 0.8,
                          )),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
                          child: Text(
                            ' 1,500 TK.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 18.0,
                                color: kTextLightColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 0.0, right: 0.0, bottom: 15.0),
                        child: Text(
                          '   Follow-up Fees ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 18.0,
                              color: kTitleTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      Container(
                          height: 30,
                          child: VerticalDivider(
                            color: Colors.black54,
                            thickness: 0.8,
                          )),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 15.0),
                          child: Text(
                            ' 500 TK.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Segoe',
                                fontSize: 18.0,
                                color: kTextLightColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: 18.0, top: 0.0, right: 0.0, bottom: 5.0),
                child: Text(
                  'Chamber Address- 1:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 17.0,
                      color: kTitleTextColor,
                      fontWeight: FontWeight.w600),
                ),
              )),
              Container(
                height: 55,
                child: VerticalDivider(
                  color: Colors.black54,
                  thickness: 0.5,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
                  child: Text(
                    'Popular Diagnostic Centre, Dhanmondi, Dhaka-1209',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 15.0,
                        color: kTextLightColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          verticalDivider,
          Row(
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: Text(
                  'Chamber Address- 2:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 17.0,
                      color: kTitleTextColor,
                      fontWeight: FontWeight.w600),
                ),
              )),
              Container(
                height: 55,
                child: VerticalDivider(
                  color: Colors.black54,
                  thickness: 0.5,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: Text(
                    'IBN Sina Diagnostic Centre, Dhanmondi, Dhaka-1209',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 15.0,
                        color: kTextLightColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final seeDoctorNowButton = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 80),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SelectPatient.tag);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
        color: kBaseColor,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Icon(
                Icons.videocam_rounded,
                color: kTitleColor,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 35),
              child: Text(
                'See Doctor Now',
                style: TextStyle(
                    fontFamily: "Segoe",
                    letterSpacing: 0.5,
                    fontSize: 15,
                    color: kTitleColor,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
    final doctorExperience = Container(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 2.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    color: kCardTitleColor,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 12.0, top: 4.0, right: 12, bottom: 1),
                      child: Text(
                        'Dhaka Medical College',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: kBodyTextColor),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'Designation:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4, top: 6),
                                child: Text(
                                  'Medical Officer',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Department:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Medicine & Emergency',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Duration:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  '1 year 1 month',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Employment Period:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'January 1, 2020 to February 28, 2021',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 2.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    color: kCardTitleColor,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 12.0, top: 4.0, right: 12, bottom: 1),
                      child: Text(
                        'MH Samorita Medical College',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: kBodyTextColor),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'Designation:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4, top: 6),
                                child: Text(
                                  'Medical Officer',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Department:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Medicine & Emergency',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Duration:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  '1 year 1 month',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Employment Period:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'January 1, 2020 to February 28, 2021',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 2.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    color: kCardTitleColor,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 12.0, top: 4.0, right: 12, bottom: 1),
                      child: Text(
                        'Enam Medical College',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: kBodyTextColor),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'Designation:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4, top: 6),
                                child: Text(
                                  'Medical Officer',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Department:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Medicine & Emergency',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Duration:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  '1 year 1 month',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Employment Period:',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'January 1, 2020 to February 28, 2021',
                                  style: TextStyle(
                                    fontFamily: 'Segoe,',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    final singleReview = Container(
      height: 75,
      width: 395,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 8, right: 10),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: kBaseColor,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 19.0,
                            child: Image.asset('assets/apatient.png'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'MD Jahidul Hasan',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(
                                '21 Feb 2021, 6:00 PM',
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Very good, I am impressed.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 15.0, right: 20.0, bottom: 2.0),
                  child: Text(
                    '5.0',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  child: SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: 5,
                      rating: rating,
                      size: 18.0,
                      isReadOnly: true,
                      filledIconData: Icons.star,
                      //halfFilledIconData: Icons.star_half,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                      spacing: 0.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final doctorReviews = Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 30.0, top: 30.0, right: 20.0, bottom: 10.0),
                  child: Text(
                    'Reviews (100)',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: kTextLightColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 30.0, right: 20.0, bottom: 10.0),
                  child: Text(
                    'Ratings (5.0)',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: kTextLightColor,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 255,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  child: Column(
                    children: [
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                      singleReview,
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Material(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: kBaseColor,
            iconTheme: IconThemeData(color: kTitleColor),
            centerTitle: true,
            toolbarHeight: 50,
            title: Text('Doctor\'s Profile',
                style: TextStyle(
                    fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
          ),
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Column(
              children: [
                validationImageEdit,
                verticalDivider,
                doctorName,
                doctorDegree,
                doctorWorkPlace,
                specialtyButton,
                bmdcNumber,
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  child: TabBar(
                    unselectedLabelColor: kBaseColor,
                    labelColor: kTitleColor,
                    indicatorColor: kBaseColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [kBaseColor, kButtonColor]),
                      borderRadius: BorderRadius.circular(30),
                      color: kBaseColor,
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          width: 205,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: kBaseColor, width: 1.0)),
                          padding: EdgeInsets.only(bottom: 2),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Information",
                              style: TextStyle(
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 205,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: kBaseColor, width: 1.0)),
                          padding: EdgeInsets.only(bottom: 2),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Experience",
                              style: TextStyle(
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 205,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: kBaseColor, width: 1.0)),
                          padding: EdgeInsets.only(bottom: 2),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Reviews",
                              style: TextStyle(
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            doctorInformation,
                            SizedBox(
                              height: 20,
                            ),
                            seeDoctorNowButton,
                          ],
                        ),
                      ),
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            doctorExperience,
                            SizedBox(
                              height: 8,
                            ),
                            seeDoctorNowButton,
                          ],
                        ),
                      ),
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            doctorReviews,
                            SizedBox(
                              height: 12,
                            ),
                            seeDoctorNowButton,
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
