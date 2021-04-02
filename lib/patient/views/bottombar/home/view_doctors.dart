import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class ViewDoctors extends StatefulWidget {
  ViewDoctors({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'ViewDoctors';
  @override
  ViewDoctorsState createState() => new ViewDoctorsState();
}

class ViewDoctorsState extends State<ViewDoctors> {
  var rating = 5.0;
  bool isRemove = false;

  @override
  Widget build(BuildContext context) {
    final searchDoctor = Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, top: 14, right: 10, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        initialValue: '',
        style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: "Segoe",
            fontSize: 18,
            color: Colors.black),
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: kDashBoxColor,
          hintText: 'Search by Doctors name/ Hospital/ Disease',
          hintStyle: TextStyle(
              fontFamily: 'Segoe', fontSize: 16, fontWeight: FontWeight.w500),
          contentPadding:
              EdgeInsets.only(left: 10.0, top: 3.0, right: 10.0, bottom: 3.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
          prefixIcon: Container(
            child: Icon(
              Icons.search_rounded,
              size: 26,
            ),
          ),
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
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            searchDoctor,
          ],
        ),
      ),
    );
  }
}
