import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/patient/views/bottombar/home/doctor_profile.dart';
import 'package:pro_health/patient/views/drawer/custom_drawer_patient.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AppointmentPatient extends StatefulWidget {
  static String tag = 'AppointmentPatient';
  @override
  AppointmentPatientState createState() => new AppointmentPatientState();
}

class AppointmentPatientState extends State<AppointmentPatient> {
  var rating = 5.0;
  @override
  Widget build(BuildContext context) {
    final searchDoctor = Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, top: 14, right: 10, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        initialValue: '',
        style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: "Segoe",
            fontSize: 18,
            color: Colors.black),
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: kDashBoxColor,
          hintText: 'Search by Doctors name/ Hospital/ Disease',
          hintStyle: TextStyle(
              fontFamily: 'Segoe', fontSize: 16, fontWeight: FontWeight.w500),
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

    final categorySortFilter = Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 140,
                height: 35,
                padding: EdgeInsets.only(left: 10),
                child: DropdownButtonFormField(
                  decoration: new InputDecoration(
                    hintText: "All",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 3.0, 5.0, 2.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem<int>(
                      value: 1,
                      child: Text("All"),
                    ),
                    DropdownMenuItem<int>(
                      value: 2,
                      child: Text("Pediatrician"),
                    ),
                  ],
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: Text(
                  '(100) doctors found in all',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 20,
                width: 40,
                child: Image.asset('assets/icons/patient/filter.png'),
              ),
              Container(
                height: 28,
                width: 40,
                child: Image.asset('assets/icons/patient/sort.png'),
              ),
            ],
          ),
        ],
      ),
    );
    final verticalDivider = Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.8,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    final doctorCard = Container(
      child: Card(
        margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Column(
            children: [
              Container(
                  height: 60,
                  color: kCardTitleColor,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.0, top: 10.0),
                              child: Text(
                                'Consultation Fees',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: kBodyTextColor),
                              ),
                            ),
                            Container(
                              width: 115,
                              child: Text(
                                '৳1000',
                                style: TextStyle(
                                    fontSize: 16, color: kBodyTextColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150.0),
                        child: Text(
                          'Online',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kBodyTextColor),
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 130,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, top: 10, right: 10, bottom: 4),
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: kBaseColor,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20.0,
                                child: Image.asset('assets/doctorimg.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 70,
                            padding: EdgeInsets.only(bottom: 2),
                            decoration: BoxDecoration(
                                color: kButtonColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            child: new Text(
                              "Pediatrician",
                              style: TextStyle(
                                  fontFamily: 'Segoe',
                                  letterSpacing: 0.5,
                                  fontSize: 10,
                                  color: kWhiteShadow),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Prof. Mohammed Hanif',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  color: kBaseColor),
                            ),
                          ),
                          Container(
                            child: Text(
                              'MBBS, FCPS, FRCP (Edin)',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Segoe',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              '5+ years',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Total Experience',
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              'Dhaka Shishu Hospital',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Working in',
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 12, top: 25),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 20.0,
                                top: 15.0,
                                right: 20.0,
                                bottom: 2.0),
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
                                size: 15.0,
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
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Container(
                  height: 35,
                  width: 220,
                  decoration: BoxDecoration(
                      color: kButtonColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(left: 25, bottom: 2, right: 25),
                        child: Text(
                          'See Doctor\'s Details',
                          style: TextStyle(
                              fontFamily: "Segoe",
                              letterSpacing: 0.5,
                              fontSize: 14,
                              color: kWhiteShadow),
                        ),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            width: 44,
                            color: kTitleColor,
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_rounded),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(DoctorProfile.tag);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    final doctorViewCardList = Container(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Column(
        children: [
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 10,
          ),
          doctorCard,
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );

    return Scaffold(
      drawer: CustomDrawerPatient(),
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
            searchDoctor,
            categorySortFilter,
            verticalDivider,
            doctorViewCardList,
          ],
        ),
      ),
    );
  }
}
