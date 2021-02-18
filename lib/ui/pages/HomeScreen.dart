import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/ui/utilities/Constant.dart';
import 'package:pro_health/ui/pages/SignIn.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'HomeScreen';
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final homeScreenLogo = Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 70.0,
          child: Image.asset('assets/prohealthhlogo.png'),
        ),
      ),
    );

    final signInDoctorCard = Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child:
      Container(
        height: 80,
        child: MaterialButton(
          padding: EdgeInsets.only(left: 1.0, top: 2.0, right: 1.0, bottom: 2.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
          color: kDashBoxColor,
          elevation: 15,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                //leading: Icon(Icons.person_add_sharp, color: Colors.white, size: 40),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/doctorsignin.png'),
                  // no matter how big it is, it won't overflow
                ),
                title: Text('Sign In as Doctor',
                  style: TextStyle(fontFamily: 'Segoe', fontSize: 20.0, letterSpacing: 0.5, color: kBodyTextColor, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                subtitle: Text('Connecting Patients for consultation',
                  style: TextStyle(fontFamily: 'Segoe', fontStyle: FontStyle.italic, color: kTextLightColor, fontSize: 10, fontWeight: FontWeight.w700), textAlign: TextAlign.left,),
              ),
            ],
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(SignIn.tag);
          },
        ),
      ),
    );

    final signInPatientCard = Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child:
      Container(
        height: 80,
        child: MaterialButton(
          padding: EdgeInsets.only(left: 1.0, top: 2.0, right: 1.0, bottom: 2.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
          color: kDashBoxColor,
          elevation: 15,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                //leading: Icon(Icons.person_add_sharp, color: Colors.white, size: 40),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/patientsignin.png'), // no matter how big it is, it won't overflow
                ),
                title: Text('Sign In as Patient',
                  style: TextStyle(fontFamily: 'Segoe', fontSize: 20.0, letterSpacing: 0.5, color: kBodyTextColor, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                subtitle: Text('Connecting Doctors for consultation',
                  style: TextStyle(fontFamily: 'Segoe', fontStyle: FontStyle.italic, color: kTextLightColor, fontSize: 10, fontWeight: FontWeight.w700), textAlign: TextAlign.left,),
              ),
            ],
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('');
          },
        ),
      ),
    );

    final sponsor = Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
            child: Text(
              'Sponsored by', textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Segoe', fontSize: 15.0, letterSpacing: 0.5, color: kBodyTextColor, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 165),
            child: Image.asset('assets/logo.png'),
          )
        ],
      ),
    );

    final developer = Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Text(
              'Developed by', textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Segoe',fontSize: 15.0, letterSpacing: 0.5, color: kBodyTextColor, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 145),
            child: Image.asset('assets/pharmalogo.png'),
          )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Expanded(
          child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              homeScreenLogo,
              signInDoctorCard,
              signInPatientCard,
              sponsor,
              developer,
            ],
          ),
        ),
      ),
    );
  }
}