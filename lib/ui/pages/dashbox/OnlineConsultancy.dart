import 'package:flutter/material.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class OnlineConsultancy extends StatefulWidget {
  static String tag = 'OnlineConsultancy';
  @override
  OnlineConsultancyState createState() => new OnlineConsultancyState();
}

class OnlineConsultancyState extends State<OnlineConsultancy> {

  final topCard = Card(
    margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 15,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Column(
        children: [
          Container(
            height: 65,
            color: kBaseColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12.0, top: 10.0),
                  child: Text('Appointment Request', style: TextStyle(fontSize: 16, color: kTitleColor),),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.access_time, size: 20, color: kTitleColor),
                      SizedBox(width: 2.0,),
                      Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 16, color: kTitleColor),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: kBaseColor,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 17.0,
                      child: Image.asset('assets/doctorimg.png'),
                    ),
                  ),
                ),
                Container(
                  child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 70),
            child: Container(
              height: 30,
              width: 220,
              decoration: BoxDecoration(
                  color: kTitleColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              alignment: Alignment.center,
              child: new Text(
                "Problem: ৩দিন যাবত জ্বর",
                style: TextStyle(fontFamily: 'Segoe', fontWeight: FontWeight.w600, letterSpacing: 0.5, fontSize: 16,),
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 185,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: MaterialButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {
                    },
                    padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                    color: kButtonColor,
                    child: Text('Accept', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kWhiteShadow)),
                  ),
                ),
                Container(
                  width: 185,
                  padding: EdgeInsets.only(left: 30.0, right: 10.0),
                  child: MaterialButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(
                          color: kBaseColor,
                          width: 0.8,
                          style: BorderStyle.solid
                      ),
                    ),
                    onPressed: () {
                    },
                    padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                    color: kWhiteShadow,
                    child: Text('Decline', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kBaseColor)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  final nextAppointmentTitle = Container(
    padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0, bottom: 10.0),
    child: Text('Next Appointments', style: TextStyle(fontSize: 20, color: kTextLightColor),),
  );
  final patientsCard = Container(
    height: 60,
    width: 395,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20)),
    alignment: Alignment.center,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 10),
          child: CircleAvatar(
            radius: 19,
            backgroundColor: kBaseColor,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18.0,
              child: Image.asset('assets/doctorimg.png'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
              ),
              Container(
                child: Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 14),),
              )
            ],
          ),
        ),
        SizedBox(width: 75,),
        Container(
          alignment: Alignment.centerRight,
            child: RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.more_vert,
                size: 25,
              ),
              padding: EdgeInsets.all(8),
              shape: CircleBorder(),
            )
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
        title: Text('Emergency Online Consultancy', style: TextStyle(fontFamily:'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 2),
            Center(
              child: Container(
                width: 80.00,
                height: 80.00,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/consultancypage.png'),
                      fit: BoxFit.fitHeight,
                    )),
              ),
            ),
            Container(
              width: 250.00,
              height: 30,
              child: Text('Online Consultancy',
                style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5,),
            const Divider(
              color: Colors.black,
              height: 0.0,
              thickness: 0.5,
              indent: 0.0,
              endIndent: 0.0,
            ),
            topCard,
            nextAppointmentTitle,
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 10,),
                  patientsCard,
                  SizedBox(height: 30,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}