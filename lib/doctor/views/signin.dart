import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/views/Dashboard.dart';
import 'package:pro_health/doctor/views/subpages/CreateNewAccount.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/base/utils/constants.dart';
import 'package:pro_health/doctor/views/subpages/ForgotPassword.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'SignIn';
  @override
  SignInState createState() => new SignInState();
}

class SignInState extends State<SignIn> {

  bool showvalue = false;
  bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final signInLogo = Container(
      padding: EdgeInsets.only(top: 60, bottom: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 70.0,
          child: Image.asset('assets/prohealthhlogo.png'),
        ),
      ),
    );

    final signInInstructions = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 40.0),
      child: Text(
        'Please enter following informations to sign in', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Segoe', fontSize: 13.0, letterSpacing: 0.5, color: kBodyTextColor, fontWeight: FontWeight.w500),
      ),
    );

    final phoneNo = Container(
      height: 70,
      padding: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.number,
        validator: numberValidator,
        autofocus: false,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        autocorrect: true,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Container(
            height: 10,
            width: 10,
            padding: EdgeInsets.symmetric(vertical: 11.0,),
            child: Image(
              image: AssetImage(
                'assets/phoneno.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );

    final bmdcNo = Container(
      height: 70,
      padding: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        keyboardType: TextInputType.streetAddress,
        validator: numberValidator,
        autofocus: false,
        initialValue: '',
        style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'BMDC Registration No.',
          contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Container(
            height: 10,
            width: 10,
            padding: EdgeInsets.symmetric(vertical: 11.0,),
            child: Image(
              image: AssetImage(
                'assets/bmdcno.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );

    final password = Container(
      height: 70,
      padding: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.visiblePassword,
        validator: numberValidator,
        obscureText: !_passwordVisible,
        //obscuringCharacter: "*",
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
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );

    final signInButton = Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Dashboard.tag);
        },
        padding: EdgeInsets.only(top: 5.0, bottom: 8.0),
        color: kButtonColor,
        child: Text('Sign in', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 18, color: kWhiteShadow)),
      ),
    );

    final rememberForgotLabel = Container(
      height: 50,
      child: Row(
        children: [
          Container(
            width: 30,
            child: Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              checkColor: kBackgroundColor,
              activeColor: kBaseColor,
              value: this.showvalue,
              onChanged: (bool value) {
                setState(() {
                  this.showvalue = value;
                });
              },
            ),
          ),
          Container(
            child: Text('Remember Me', style: TextStyle(fontFamily: 'Segoe', letterSpacing: 0.5, fontSize: 15), textAlign: TextAlign.left,),
          ),
          SizedBox(width: 60,),
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/forgotpass.png'),
            ),
          ),
          InkWell(
            highlightColor: kBackgroundColor,
            hoverColor: kBackgroundColor,
            //splashColor: kBackgroundColor,
            child: Container(
              child: Text('Forgotten Password?', style: TextStyle(fontFamily: 'Segoe', letterSpacing: 0.5, fontSize: 15), textAlign: TextAlign.right,),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(ForgotPassword.tag);
            },
          ),
        ],
      ),
    );

    final createAccountButton = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(CreateNewAccount.tag);
        },
        padding: EdgeInsets.only(top: 5.0, bottom: 8.0),
        color: kButtonColor,
        child: Text('Create new Account', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 18, color: kWhiteShadow)),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            signInLogo,
            signInInstructions,
            phoneNo,
            bmdcNo,
            password,
            signInButton,
            rememberForgotLabel,
            createAccountButton,
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