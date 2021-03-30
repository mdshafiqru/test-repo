import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/patient/views/drawer/custom_drawer.dart';

class MessagePatient extends StatefulWidget {
  static String tag = 'MessagePatient';
  @override
  MessagePatientState createState() => new MessagePatientState();
}

class MessagePatientState extends State<MessagePatient> {
  @override
  Widget build(BuildContext context) {
    final messageLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/icons/patient/messagepage.png'),
        ),
      ),
    );

    final messageTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Message',
        style: TextStyle(
            fontFamily: 'Segoe',
            color: kTextLightColor,
            letterSpacing: 0.5,
            fontSize: 18,
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

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        backgroundColor: kBaseColor,
        shadowColor: Colors.teal,
        iconTheme: IconThemeData(color: kTitleColor),
        toolbarHeight: 50,
        title: Text(
          'Message',
          style:
              TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            messageLogo,
            messageTitle,
            verticalDivider,
          ],
        ),
      ),
    );
  }
}
