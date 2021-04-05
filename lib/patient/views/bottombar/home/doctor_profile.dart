import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

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
                    radius: 52,
                    backgroundColor: kBodyTextColor,
                    child: CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 51,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Image.asset('assets/doctorimg.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -(radius - distance),
                    right: -(radius + iconSize + distance),
                    bottom: -iconSize - distance - 65,
                    left: radius,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xff6ECEC0),
                      size: iconSize - 4,
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
                onPressed: () {},
              ),
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
          borderRadius: BorderRadius.circular(25)),
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
    final consultations = Container(
      padding: EdgeInsets.only(left: 6.0, top: 15.0, right: 6.0, bottom: 10.0),
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
    );

    final chamberAddress1 = Row(
      children: [
        Container(
            child: Padding(
          padding:
              EdgeInsets.only(left: 18.0, top: 0.0, right: 0.0, bottom: 5.0),
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
            padding:
                EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 5.0),
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
    );

    final chamberAddress2 = Row(
      children: [
        Container(
            child: Padding(
          padding:
              EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
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
            padding:
                EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
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
    );
    final seeDoctorNowButton = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 80),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed('');
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
                          LinearGradient(colors: [kBaseColor, kBaseColor]),
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
                            consultations,
                            chamberAddress1,
                            verticalDivider,
                            chamberAddress2,
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
                            consultations,
                            chamberAddress1,
                            verticalDivider,
                            chamberAddress2,
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
                            consultations,
                            chamberAddress1,
                            verticalDivider,
                            chamberAddress2,
                            SizedBox(
                              height: 20,
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
