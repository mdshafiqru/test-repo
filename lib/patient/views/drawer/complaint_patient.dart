import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_health/base/utils/constants.dart';

class ComplaintPatient extends StatefulWidget {
  static String tag = 'ComplaintPatient';
  @override
  ComplaintPatientState createState() => new ComplaintPatientState();
}

class ComplaintPatientState extends State<ComplaintPatient> {
  final complaintLogo = Padding(
    padding: EdgeInsets.only(top: 2),
    child: Container(
      width: 80.00,
      height: 80.00,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage('assets/icons/patient/complaintpage.png'),
        fit: BoxFit.fitHeight,
      )),
    ),
  );
  final complaintTitle = Container(
    width: 250.00,
    height: 30,
    child: Text(
      'Complaint',
      style: TextStyle(
          fontFamily: 'Segoe',
          color: kTextLightColor,
          letterSpacing: 0.5,
          fontSize: 20,
          fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    ),
  );
  final descTextfield = Container(
    padding: EdgeInsets.only(left: 25, top: 30, right: 25, bottom: 20),
    child: TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(400)],
      keyboardType: TextInputType.multiline,
      autofocus: false,
      maxLines: 4,
      initialValue: '',
      style: TextStyle(fontFamily: "Segoe", fontSize: 18, color: Colors.black),
      autocorrect: true,
      decoration: InputDecoration(
        hintText: 'Describe the complaint',
        hintStyle: TextStyle(
            fontSize: 17, letterSpacing: 0.8, fontWeight: FontWeight.w300),
        contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
  );
  final sendButton = Container(
    padding: EdgeInsets.symmetric(horizontal: 120),
    child: MaterialButton(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {},
      padding: EdgeInsets.only(top: 5.0, bottom: 8.0),
      color: kButtonColor,
      child: Text('Send',
          style: TextStyle(
              fontFamily: "Segoe",
              letterSpacing: 0.5,
              fontSize: 18,
              color: kWhiteShadow)),
    ),
  );
  final complaintDataTable = ClipRRect(
    borderRadius: BorderRadius.circular(25.0),
    child: Container(
      padding: EdgeInsets.only(left: 2, right: 2),
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey),
        dataRowHeight: 80,
        headingRowHeight: 40,
        headingTextStyle: TextStyle(textBaseline: TextBaseline.ideographic),
        showBottomBorder: true,
        columnSpacing: 20.0,
        columns: [
          DataColumn(
              label: Text(
            "#SL",
            style: TextStyle(
                fontSize: 15.0,
                color: kWhiteShade,
                fontWeight: FontWeight.w900),
          )),
          DataColumn(
              label: Text(
            "Problem",
            style: TextStyle(
                fontSize: 15.0,
                color: kWhiteShade,
                fontWeight: FontWeight.w900),
          )),
          DataColumn(
              label: Text(
            "Date",
            style: TextStyle(
                fontSize: 15.0,
                color: kWhiteShade,
                fontWeight: FontWeight.w900),
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(
              Text("1"),
            ),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("21-01-2021")),
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text("2")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("23-01-2021")),
          ]),
          DataRow(cells: [
            DataCell(Text("3")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("21-01-2021")),
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text("4")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("23-01-2021")),
          ]),
          DataRow(cells: [
            DataCell(Text("5")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("21-01-2021")),
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text("6")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("23-01-2021")),
          ]),
          DataRow(cells: [
            DataCell(Text("7")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("21-01-2021")),
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text("8")),
            DataCell(Text(
                "Physicians plan and insure against the possibility of a medical malpractice suit.")),
            DataCell(Text("23-01-2021")),
          ]),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
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
        title: Text('Complaint',
            style: TextStyle(fontFamily: 'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 2),
            complaintLogo,
            complaintTitle,
            SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
              height: 0.0,
              thickness: 0.5,
              indent: 0.0,
              endIndent: 0.0,
            ),
            descTextfield,
            sendButton,
            SizedBox(
              height: 50,
            ),
            complaintDataTable,
          ],
        ),
      ),
    );
  }
}
