import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class FavoritePatient extends StatefulWidget {
  FavoritePatient({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'FavoritePatient';
  @override
  FavoritePatientState createState() => new FavoritePatientState();
}

class FavoritePatientState extends State<FavoritePatient> {
  var rating = 5.0;
  bool isRemove = false;

  @override
  Widget build(BuildContext context) {
    final favouriteLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/icons/patient/favouritepage.png'),
        ),
      ),
    );

    final favouriteTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Favourite',
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

    final doctorCard = Container(
      height: 95,
      width: 395,
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
                        padding: EdgeInsets.only(left: 15, top: 5, right: 10),
                        child: CircleAvatar(
                          radius: 27.0,
                          backgroundColor: kBaseColor,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26.0,
                            child: Image.asset('assets/doctorimg.png'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Prof. Mohammed Hanif',
                                style: TextStyle(
                                    fontFamily: 'Segoe',
                                    fontSize: 15,
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
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Dhaka Shishu Hospital',
                                style: TextStyle(
                                    fontFamily: 'Segoe',
                                    fontSize: 12,
                                    color: kBodyTextColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 2),
                  child: Text(
                    '21 Feb 2021, 6:00 PM',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 95,
          ),
          Container(
            width: 25,
            child: PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'Remove',
                    child: Text('Remove'),
                  )
                ];
              },
              onSelected: (result) {
                if (result == 'Remove') {
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ],
      ),
    );
    final favoriteDoctorList = Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 20),
        child: ListBody(
          children: [
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
            doctorCard,
            SizedBox(
              height: 10,
            ),
          ],
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
        title: Text('Favourite',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          children: <Widget>[
            favouriteLogo,
            favouriteTitle,
            verticalDivider,
            favoriteDoctorList,
          ],
        ),
      ),
    );
  }
}
