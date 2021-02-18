import 'package:flutter/material.dart';
import 'package:pro_health/ui/pages/Dashboard.dart';
import 'package:pro_health/ui/pages/HomeScreen.dart';
import 'package:pro_health/ui/pages/SignIn.dart';
import 'package:pro_health/ui/pages/bottombar/Appointment.dart';
import 'package:pro_health/ui/pages/bottombar/DoctorProfile.dart';
import 'package:pro_health/ui/pages/bottombar/Home.dart';
import 'package:pro_health/ui/pages/bottombar/PharmaUpdates.dart';
import 'package:pro_health/ui/pages/bottombar/Prescription.dart';
import 'package:pro_health/ui/pages/dashbox/ConsultationHistory.dart';
import 'package:pro_health/ui/pages/dashbox/Earnings.dart';
import 'package:pro_health/ui/pages/dashbox/OnlineConsultancy.dart';
import 'package:pro_health/ui/pages/dashbox/DrugInfo.dart';
import 'package:pro_health/ui/pages/draweritem/AboutUs.dart';
import 'package:pro_health/ui/pages/draweritem/ActivityStatus.dart';
import 'package:pro_health/ui/pages/draweritem/ContactUs.dart';
import 'package:pro_health/ui/pages/draweritem/Help.dart';
import 'package:pro_health/ui/pages/draweritem/PrivacyAndPolicy.dart';
import 'package:pro_health/ui/pages/draweritem/Reviews.dart';
import 'package:pro_health/ui/pages/draweritem/Settings.dart';
import 'package:pro_health/ui/pages/draweritem/TermsConditions.dart';
import 'package:pro_health/ui/pages/subpages/AccountVerify.dart';
import 'package:pro_health/ui/pages/subpages/CreateNewAccount.dart';
import 'package:pro_health/ui/pages/subpages/ForgotPassword.dart';
import 'package:pro_health/ui/pages/subpages/NewAccountPassword.dart';
import 'package:pro_health/ui/pages/subpages/NewAccountVerify.dart';
import 'package:pro_health/ui/pages/subpages/TermsAndConditions.dart';
import 'package:pro_health/ui/pages/subpages/UpdatePassword.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomeScreen.tag: (context) => HomeScreen(),
    SignIn.tag: (context) => SignIn(),
    Dashboard.tag: (context) => Dashboard(),
    Home.tag: (context) => Home(),
    Appointment.tag: (context) => Appointment(),
    PharmaUpdates.tag: (context) => PharmaUpdates(),
    Prescription.tag: (context) => Prescription(),
    DoctorProfile.tag: (context) => DoctorProfile(),
    ForgotPassword.tag: (context) => ForgotPassword(),
    AccountVerify.tag: (context) => AccountVerify(mobileno: '',),
    UpdatePassword.tag: (context) => UpdatePassword(),
    CreateNewAccount.tag: (context) => CreateNewAccount(),
    NewAccountVerify.tag: (context) => NewAccountVerify(mobileno: '',),
    NewAccountPassword.tag: (context) => NewAccountPassword(),
    TermsAndConditions.tag: (context) => TermsAndConditions(),
    DrugInfo.tag: (context) => DrugInfo(),
    OnlineConsultancy.tag: (context) => OnlineConsultancy(),
    Earnings.tag: (context) => Earnings(),
    ConsultationHistory.tag: (context) => ConsultationHistory(),
    ActivityStatus.tag: (context) => ActivityStatus(),
    TermsConditions.tag: (context) => TermsConditions(),
    PrivacyAndPolicy.tag: (context) => PrivacyAndPolicy(),
    AboutUs.tag: (context) => AboutUs(),
    ContactUs.tag: (context) => ContactUs(),
    Help.tag: (context) => Help(),
    Settings.tag: (context) => Settings(),
    Reviews.tag: (context) => Reviews(),

  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: kBaseColor,
        fontFamily: 'Nunito',
      ),
      home: HomeScreen(),
      routes: routes,
    );
  }
}