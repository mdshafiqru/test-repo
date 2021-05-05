import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'AboutUs';
  @override
  AboutUsState createState() => new AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final aboutUsLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/icons/doctor/aboutpage.png'),
        ),
      ),
    );

    final aboutUsTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'About Us',
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

    final descTitle = Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
            child: Text(
              'According to WHO, there are an estimated 3.05 physicians per 10,000'
              'population in Bangladesh; which is very insignificant to serve such a huge '
              'population. On the other hand, there are millions of patients in Bangladesh who '
              'could not reach to the right doctor for their right treatment purposes. '
              'Therefore, we need to adopt with such a technology which will connect the doctors '
              'with the patient.',
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
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
        title: Text('About Us',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            aboutUsLogo,
            aboutUsTitle,
            verticalDivider,
            descTitle,
          ],
        ),
      ),
    );
  }
}
