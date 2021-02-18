import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_health/ui/pages/subpages/NewAccountVerify.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class CreateNewAccount extends StatefulWidget {
  CreateNewAccount({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'CreateNewAccount';
  @override
  CreateNewAccountState createState() => new CreateNewAccountState();
}

class CreateNewAccountState extends State<CreateNewAccount> {


  @override
  Widget build(BuildContext context) {

    final createNewAccountLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/createnewaccount.png'),
        ),
      ),
    );

    final createNewAccountTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Create New Account',
        style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
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

    final createNewAccountInstructions = Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 60.0),
      child: Text(
        'Please enter following informations to create account', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Segoe', fontSize: 14.0, color: kBodyTextColor, fontWeight: FontWeight.w500),
      ),
    );

    final name = Container(
      height: 70,
      padding: EdgeInsets.only(top:0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.text,
        validator: numberValidator,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
            hintText: 'Name',
            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            prefixIcon: Icon(Icons.person_rounded)
        ),
      ),
    );

    final phoneNo = Container(
      height: 70,
      padding: EdgeInsets.only(top:0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.number,
        validator: numberValidator,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
            hintText: 'Phone Number',
            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            prefixIcon: Icon(Icons.phone_android_rounded)
        ),
      ),
    );

    final bmdcNo = Container(
      height: 70,
      padding: EdgeInsets.only(top: 0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.streetAddress,
        validator: numberValidator,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'BMDC Registration No.',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Icon(Icons.app_registration),
        ),
      ),
    );

    final email = Container(
      height: 70,
      padding: EdgeInsets.only(top: 0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.emailAddress,
        validator: numberValidator,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'E-mail Address',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Icon(Icons.email_rounded),
        ),
      ),
    );

    final appValidity = Container(
      padding: EdgeInsets.only(left: 2.0, top: 15.0, right: 2.0, bottom: 10.0),
      child: Text(
        'Paid Version: 365 days', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Segoe', fontSize: 14.0, color: kBodyTextColor, fontWeight: FontWeight.w500),
      ),
    );

    final getOTPButton = Container(
      child: Padding(
        padding: EdgeInsets.only(top: 0.0, left: 25, bottom: 0.0, right: 25),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(NewAccountVerify.tag);
          },
          color: kButtonColor,
          child: Text('Get OTP', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 18, color: kWhiteShadow)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            createNewAccountLogo,
            createNewAccountTitle,
            verticalDivider,
            createNewAccountInstructions,
            name,
            phoneNo,
            bmdcNo,
            email,
            appValidity,
            getOTPButton,
          ],
        ),
      ),
    );
  }
}

String numberValidator(String value) {
  if(value == null) {
    return null;
  }
  final n = num.tryParse(value);
  if(n == null) {
    return '"$value" is not a valid number!';
  }
  return null;
}