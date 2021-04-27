import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pro_health/base/utils/constants.dart';

class ActivityStatus extends StatefulWidget {
  ActivityStatus({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'ActivityStatus';
  @override
  ActivityStatusState createState() => new ActivityStatusState();
}

class ActivityStatusState extends State<ActivityStatus> {
  bool active = true;
  bool inActive = false;
  bool automatic = false;

  @override
  Widget build(BuildContext context) {
    final newAccountPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/icons/doctor/statuspage.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Active Status',
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

    final activeStatusButton = Padding(
      padding: EdgeInsets.only(left: 15.0, top: 35.0, right: 10.0, bottom: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "Active",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: FlutterSwitch(
                  width: 50.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  activeColor: kBaseColor,
                  value: active,
                  onToggle: (val) {
                    setState(() {
                      active = val;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
    final inActiveStatusButton = Padding(
      padding: EdgeInsets.only(left: 15.0, top: 2.0, right: 10.0, bottom: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerRight,
                child: Text("Inactive", style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: FlutterSwitch(
                  width: 50.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  activeColor: kBaseColor,
                  value: inActive,
                  onToggle: (val) {
                    setState(() {
                      inActive = val;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
    final automaticButton = Padding(
      padding: EdgeInsets.only(left: 15.0, top: 2.0, right: 10.0, bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerRight,
                child: Text("Automatic", style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: FlutterSwitch(
                  width: 50.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  activeColor: kBaseColor,
                  value: automatic,
                  onToggle: (val) {
                    setState(() {
                      automatic = val;
                    });
                  },
                ),
              )
            ],
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
        title: Text('User Status',
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
            activeStatusButton,
            inActiveStatusButton,
            automaticButton,
          ],
        ),
      ),
    );
  }
}
