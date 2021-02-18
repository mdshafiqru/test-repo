import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_health/ui/pages/subpages/TermsAndConditions.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class NewAccountPassword extends StatefulWidget {
  NewAccountPassword({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'NewAccountPassword';
  @override
  NewAccountPasswordState createState() => new NewAccountPasswordState();
}

class NewAccountPasswordState extends State<NewAccountPassword> {


  @override
  Widget build(BuildContext context) {

    final newAccountPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/accountpassword.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Account Password',
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
        'Please enter new password and re-type password to sign in', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Segoe', fontSize: 13.0, color: kBodyTextColor, fontWeight: FontWeight.w500),
      ),
    );

    final newPassword = Container(
      height: 70,
      padding: EdgeInsets.only(top:0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        validator: numberValidator,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Container(
            height: 12,
            width: 12,
            padding: EdgeInsets.symmetric(vertical: 11.0,),
            child: Image(
              image: AssetImage(
                'assets/password.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );

    final reTypePassword = Container(
      height: 70,
      padding: EdgeInsets.only(top: 0.0, left: 25, bottom: 20, right: 25),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.visiblePassword,
        validator: numberValidator,
        obscureText: true,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Re-Type Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Container(
            height: 12,
            width: 12,
            padding: EdgeInsets.symmetric(vertical: 11.0,),
            child: Image(
              image: AssetImage(
                'assets/retypepassword.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );

    final signInButton = Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(TermsAndConditions.tag);
          },
          color: kButtonColor,
          child: Text('Sgin in', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 18, color: kWhiteShadow)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            newAccountPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            forgotPassInstructions,
            newPassword,
            reTypePassword,
            signInButton,
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