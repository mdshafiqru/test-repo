import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class DrugInfo extends StatefulWidget {
  static String tag = 'DrugInfo';
  @override
  DrugInfoState createState() => new DrugInfoState();
}

class DrugInfoState extends State<DrugInfo> {
  
  final drugInfoLogo = Center(
    child: Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 35.0,
        child: Image.asset('assets/druginfopage.png'),
      ),
    ),
  );
  final drugInfoTitle = Container(
    width: 250.00,
    height: 30,
    child: Text('Drug Info',
      style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
    ),
  );
  final comingSoon = Center(
    child: Column(
      children: [
        Container(
          width: 180,
          height: 250,
          padding: EdgeInsets.only(top: 70),
          child: Image.asset('assets/comingsoon.png', fit: BoxFit.fill,),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.only(top: 15.0),
          child: Text('Coming Soon..', style: TextStyle(fontFamily: 'Segoe', letterSpacing: 0.5, fontSize: 20, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
        title: Text('Drug Info', style: TextStyle(fontFamily:'Segoe', fontSize: 18, color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 5),
            drugInfoLogo,
            drugInfoTitle,
            SizedBox(height: 5,),
            const Divider(
              color: Colors.black,
              height: 0.0,
              thickness: 0.5,
              indent: 0.0,
              endIndent: 0.0,
            ),
            comingSoon,
          ],
        ),
      ),
    );
  }
}