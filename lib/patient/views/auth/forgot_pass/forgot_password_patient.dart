import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'account_verify_patient.dart';

class ForgotPasswordPatient extends StatefulWidget {
  ForgotPasswordPatient({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'ForgotPasswordPatient';
  @override
  ForgotPasswordPatientState createState() => new ForgotPasswordPatientState();
}

class ForgotPasswordPatientState extends State<ForgotPasswordPatient> {


  @override
  Widget build(BuildContext context) {

    final forgotPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/icons/patient/forgotpassword.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Forgot Password',
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

    final forgotPassInstructions = Container(
      padding: EdgeInsets.only(left: 2.0, top: 30.0, right: 2.0, bottom: 120.0),
      child: Text(
        'Please enter your previous registered phone number', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Segoe', fontSize: 13.0, color: kBodyTextColor, fontWeight: FontWeight.w500),
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

    final getCodeButton = Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(AccountVerifyPatient.tag);
          },
          color: kButtonColor,
          child: Text('Get Code', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 18, color: kWhiteShadow)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            forgotPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            forgotPassInstructions,
            phoneNo,
            getCodeButton,
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