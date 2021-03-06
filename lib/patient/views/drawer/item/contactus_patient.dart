import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class ContactUsPatient extends StatefulWidget {
  ContactUsPatient({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'ContactUsPatient';
  @override
  ContactUsPatientState createState() => new ContactUsPatientState();
}

class ContactUsPatientState extends State<ContactUsPatient> {
  @override
  Widget build(BuildContext context) {
    final newAccountPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/icons/patient/contactpage.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Contact Us',
        style: TextStyle(
            fontFamily: 'Segoe',
            color: kTextLightColor,
            letterSpacing: 0.5,
            fontSize: 20,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
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

    final comingSoon = Center(
      child: Column(
        children: [
          Container(
            width: 180,
            height: 250,
            padding: EdgeInsets.only(top: 70),
            child: Image.asset(
              'assets/icons/patient/comingsoon.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Coming Soon..',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  letterSpacing: 0.5,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
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
        title: Text('Contact Us',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            newAccountPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            comingSoon,
          ],
        ),
      ),
    );
  }
}
