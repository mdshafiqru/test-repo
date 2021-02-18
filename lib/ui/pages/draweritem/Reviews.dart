import 'package:flutter/material.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class Reviews extends StatefulWidget {
  Reviews({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'Reviews';
  @override
  ReviewsState createState() => new ReviewsState();
}

class ReviewsState extends State<Reviews> {

  @override
  Widget build(BuildContext context) {

    final newAccountPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/reviewspage.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Reviews',
        style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
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

    final forgotPassInstructions = Expanded(
      child: Container(
        height: 450,
        padding: EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0, bottom: 20.0),
        child: Text(
          'These terms and conditions are a set of rules about use of an application. '
              'They set out how users may use the site or application, and what they can and cannot do on the application. '
              'For example, if a user posts offensive or defamatory content on a website, the owner of the app will want'
              ' to have terms and conditions to fall back on which clearly state that the owner of the app does not permit '
              'or take responsibility for that offensive content, and that any liability (such as a defamation claim) '
              'should therefore sit with the user.\nIn addition, the owner of the site may want to have the ability to '
              'terminate the user\'s account - and this also will need to be explained in the terms and conditions.', textAlign: TextAlign.justify,
          style: TextStyle(fontFamily: 'Segoe', fontSize: 19.0, color: kBodyTextColor, fontWeight: FontWeight.w500),
        ),
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
        title: Text('Reviews', style: TextStyle(fontFamily:'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            newAccountPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            forgotPassInstructions,
          ],
        ),
      ),
    );
  }
}