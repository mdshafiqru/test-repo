import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class ConsultationHistory extends StatefulWidget {
  static String tag = 'ConsultationHistory';
  @override
  ConsultationHistoryState createState() => new ConsultationHistoryState();
}

class ConsultationHistoryState extends State<ConsultationHistory> {

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
        title: Text('Consultation History', style: TextStyle(fontFamily:'Segoe', fontSize: 18, color: kTitleColor, letterSpacing: 0.5),),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 5),
            Center(
              child: Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 35.0,
                  child: Image.asset('assets/consulthistorypage.png'),
                ),
              ),
            ),
            Container(
              width: 250.00,
              height: 30,
              child: Text('Consultation History',
                style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5,),
            const Divider(
              color: kTitleTextColor,
              height: 0.0,
              thickness: 0.5,
              indent: 0.0,
              endIndent: 0.0,
            ),
            SizedBox(height: 15),
            _buildName(name: "Sohail Mahmud", id: "PSR-012 ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            _buildName(name: "Patient Name:", id: "ID: ", view: "View Details"),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Widget _buildName({String name, String id, String view}) {
    return Container(
      height: 68.0,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          //side: BorderSide(color: Colors.white70, width: 1),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(35.0)
        ),
        color: Color(0xffd6d7d9),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 7.0, left: 15.0, bottom: 0.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  Text(name),
                  Spacer(),
                  Text(id),
                  SizedBox(width: 40),
                  Container(
                    height: 35,
                    padding: EdgeInsets.only(top: 4.0, bottom: 3.0),
                    child: RawMaterialButton(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      fillColor: kWhiteShadow,
                      child: Text("$view", style: TextStyle(color: kTitleTextColor, fontSize: 12),),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}