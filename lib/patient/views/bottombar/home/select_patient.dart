import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:pro_health/patient/views/bottombar/home/request_approval.dart';

class SelectPatient extends StatefulWidget {
  SelectPatient({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'SelectPatient';
  @override
  SelectPatientState createState() => new SelectPatientState();
}

class SelectPatientState extends State<SelectPatient> {
  var rating = 5.0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(
      accentColor: kBaseColor,
      dividerColor: Colors.transparent,
    );
    final doctorCard = Container(
      padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 8),
      child: Container(
        height: 80,
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
                          padding: EdgeInsets.only(left: 15, top: 10, right: 8),
                          child: CircleAvatar(
                            radius: 26.0,
                            backgroundColor: kBaseColor,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25.0,
                              child: Image.asset('assets/doctorimg.png'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Prof. Mohammed Hanif',
                                  style: TextStyle(
                                      fontFamily: 'Segoe',
                                      fontSize: 14,
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
                                      fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20.0, top: 15.0, right: 20.0, bottom: 2.0),
                    child: Text(
                      '5.0',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    child: SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        rating: rating,
                        size: 16.0,
                        isReadOnly: true,
                        filledIconData: Icons.star,
                        //halfFilledIconData: Icons.star_half,
                        color: Colors.amber,
                        borderColor: Colors.amber,
                        spacing: 0.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    final verticalDivider = Container(
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 15.0,
        endIndent: 15.0,
      ),
    );

    final selfPatient = Container(
      padding: EdgeInsets.only(top: 5),
      child: Theme(
        data: theme,
        child: ExpansionTile(
          initiallyExpanded: true,
          trailing: SizedBox.shrink(),
          tilePadding: EdgeInsets.zero,
          leading: Container(
            padding: EdgeInsets.only(left: 12),
            child: Icon(
              Icons.check_circle,
              size: 28.0,
            ),
          ),
          title: Flexible(
            child: Text(
              'Self',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          childrenPadding: EdgeInsets.only(left: 15, right: 15),
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Describe the problem',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                maxLines: 3,
                scrollPadding: const EdgeInsets.all(20),
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 0.8, color: kTextLightColor),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 4),
                    child: Text(
                      'Add photos',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '(Max No. of photos: 10)',
                      style: TextStyle(
                        height: 2,
                        fontFamily: 'Segoe',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: IconButton(
                      padding: new EdgeInsets.only(
                          left: 5, top: 5, right: 5, bottom: 5),
                      icon: Image.asset('assets/icons/patient/camera.png'),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: IconButton(
                      padding: new EdgeInsets.only(
                          left: 5, top: 5, right: 5, bottom: 5),
                      icon: Image.asset('assets/icons/patient/addphotos.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
    final othersPatient = Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Theme(
        data: theme,
        child: ExpansionTile(
          trailing: SizedBox.shrink(),
          tilePadding: EdgeInsets.zero,
          leading: Container(
            padding: EdgeInsets.only(left: 12),
            child: Icon(
              Icons.check_circle,
              size: 28.0,
            ),
          ),
          title: Flexible(
            child: Text(
              'Others',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          childrenPadding: EdgeInsets.only(left: 15, right: 15),
          children: [
            Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Name:',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                  decoration: new InputDecoration(
                    hintText: 'Relationship:',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem<int>(
                      value: 1,
                      child: Text("Father"),
                    ),
                    DropdownMenuItem<int>(
                      value: 2,
                      child: Text("Mother"),
                    ),
                    DropdownMenuItem<int>(
                      value: 3,
                      child: Text("Sister"),
                    ),
                    DropdownMenuItem<int>(
                      value: 4,
                      child: Text("Brother"),
                    ),
                    DropdownMenuItem<int>(
                      value: 5,
                      child: Text("Son"),
                    ),
                    DropdownMenuItem<int>(
                      value: 6,
                      child: Text("Daughter"),
                    ),
                    DropdownMenuItem<int>(
                      value: 7,
                      child: Text("Grandfather"),
                    ),
                    DropdownMenuItem<int>(
                      value: 8,
                      child: Text("Grandmother"),
                    ),
                    /*DropdownMenuItem<int>(
                      value: 9,
                      child: Text("Father-in-law"),
                    ),
                    DropdownMenuItem<int>(
                      value: 10,
                      child: Text("Mother-in-law"),
                    ),
                    DropdownMenuItem<int>(
                      value: 11,
                      child: Text("Son-in-law"),
                    ),
                    DropdownMenuItem<int>(
                      value: 12,
                      child: Text("Daughter-in-law"),
                    ),
                    DropdownMenuItem<int>(
                      value: 13,
                      child: Text("Friends"),
                    ),*/
                    DropdownMenuItem<int>(
                      value: 14,
                      child: Text("Others"),
                    ),
                  ],
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Age (Years):',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Weight (kg):',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                  decoration: new InputDecoration(
                    hintText: 'Sex:',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem<int>(
                      value: 1,
                      child: Text("Male"),
                    ),
                    DropdownMenuItem<int>(
                      value: 2,
                      child: Text("Female"),
                    ),
                  ],
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Describe the problem',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                maxLines: 2,
                scrollPadding: const EdgeInsets.all(20),
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 0.8, color: kTextLightColor),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 4),
                    child: Text(
                      'Add photos',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '(Max No. of photos: 10)',
                      style: TextStyle(
                        height: 2,
                        fontFamily: 'Segoe',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: IconButton(
                      padding: new EdgeInsets.only(
                          left: 5, top: 5, right: 5, bottom: 5),
                      icon: Image.asset('assets/icons/patient/camera.png'),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: IconButton(
                      padding: new EdgeInsets.only(
                          left: 5, top: 5, right: 5, bottom: 5),
                      icon: Image.asset('assets/icons/patient/addphotos.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    final proceedButton = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 80),
      child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(RequestApproval.tag);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
          color: kBaseColor,
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 35),
            child: Text(
              'Proceed',
              style: TextStyle(
                  fontFamily: "Segoe",
                  letterSpacing: 0.5,
                  fontSize: 15,
                  color: kTitleColor,
                  fontWeight: FontWeight.w700),
            ),
          )),
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
        title: Text('Select Patient',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            doctorCard,
            verticalDivider,
            selfPatient,
            othersPatient,
            proceedButton,
          ],
        ),
      ),
    );
  }
}
