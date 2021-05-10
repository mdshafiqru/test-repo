import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:splashscreen/splashscreen.dart';

class RequestApproval extends StatefulWidget {
  RequestApproval({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'RequestApproval';
  @override
  RequestApprovalState createState() => new RequestApprovalState();
}

class RequestApprovalState extends State<RequestApproval> {
  var rating = 5.0;
  @override
  Widget build(BuildContext context) {
    final doctorCard = Container(
      padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 10, right: 8),
                          child: CircleAvatar(
                            radius: 26.0,
                            backgroundColor: kBaseColor,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25.0,
                              child: Image.asset('assets/doctorimg.png'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Prof. Mohammed Hanif',
                                  style: TextStyle(
                                      fontFamily: 'Segoe',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kBaseColor),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'MBBS, FCPS, FRCP (Edin)',
                                  style: TextStyle(
                                      fontFamily: 'Segoe',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
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
            SizedBox(
              width: 60,
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
                        size: 16.0,
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
    );
    final verticalDivider = Container(
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 15.0,
        endIndent: 15.0,
      ),
    );
    final splashScreen = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 40),
            child: Text(
              'Please wait for consultation acceptance',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Segoe',
                color: kTextLightColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 300,
            child: SplashScreen(
              seconds: 5,
              navigateAfterSeconds: new Approval(),
              backgroundColor: kBackgroundColor,
              image: Image.asset(
                'assets/icons/patient/request.png',
                fit: BoxFit.contain,
              ),
              photoSize: 80,
              loadingText: Text(
                'Your request is being processing...',
                style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 16,
                  color: kTextLightColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              loaderColor: kBaseColor,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: kBaseColor,
        centerTitle: true,
        toolbarHeight: 50,
        leading: IconButton(
          color: kTitleColor,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Requesting',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            doctorCard,
            verticalDivider,
            splashScreen,
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Approval extends StatelessWidget {
  var rating = 5.0;
  @override
  Widget build(BuildContext context) {
    final doctorCard = Container(
      padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 10, right: 8),
                          child: CircleAvatar(
                            radius: 26.0,
                            backgroundColor: kBaseColor,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25.0,
                              child: Image.asset('assets/doctorimg.png'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Prof. Mohammed Hanif',
                                  style: TextStyle(
                                      fontFamily: 'Segoe',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kBaseColor),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'MBBS, FCPS, FRCP (Edin)',
                                  style: TextStyle(
                                      fontFamily: 'Segoe',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
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
            SizedBox(
              width: 60,
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
                        size: 16.0,
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
    );
    final verticalDivider = Container(
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 15.0,
        endIndent: 15.0,
      ),
    );
    final approvalScreen = Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 80),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 4),
                  child: Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.redAccent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(
                    'You may end this session',
                    style: TextStyle(
                      fontFamily: 'Segoe',
                      letterSpacing: 0.5,
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              'Your appointment request has been Successful.',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Segoe',
                color: kTextLightColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Image.asset(
              'assets/icons/patient/success.png',
              fit: BoxFit.contain,
              scale: 6,
            ),
          ),
          Container(
            child: Text(
              'Doctor will call you very soon...',
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 16,
                color: kTextLightColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: kBaseColor,
        centerTitle: true,
        toolbarHeight: 50,
        leading: IconButton(
          color: kTitleColor,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Consultation Approval Status',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            doctorCard,
            verticalDivider,
            approvalScreen,
          ],
        ),
      ),
    );
  }
}
