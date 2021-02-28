import 'package:flutter/material.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/Dashboard.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/HomeScreen.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/SignIn.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/bottombar/Appointment.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/bottombar/DoctorProfile.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/bottombar/Home.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/bottombar/PharmaUpdates.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/bottombar/Prescription.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/dashbox/ConsultationHistory.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/dashbox/Earnings.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/dashbox/OnlineConsultancy.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/dashbox/DrugInfo.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/AboutUs.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/ActivityStatus.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/ContactUs.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/Help.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/PrivacyAndPolicy.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/Reviews.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/Settings.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/draweritem/TermsConditions.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/AccountVerify.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/CreateNewAccount.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/ForgotPassword.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/NewAccountPassword.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/NewAccountVerify.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/TermsAndConditions.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/UpdatePassword.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/Withdraw.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/ui/pages/subpages/WithdrawDetails.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{

  // Doctor
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
  Withdraw.tag: (context) => Withdraw(),
  WithdrawDetails.tag: (context) => WithdrawDetails(),
  ConsultationHistory.tag: (context) => ConsultationHistory(),
  ActivityStatus.tag: (context) => ActivityStatus(),
  TermsConditions.tag: (context) => TermsConditions(),
  PrivacyAndPolicy.tag: (context) => PrivacyAndPolicy(),
  AboutUs.tag: (context) => AboutUs(),
  ContactUs.tag: (context) => ContactUs(),
  Help.tag: (context) => Help(),
  Settings.tag: (context) => Settings(),
  Reviews.tag: (context) => Reviews(),

  // Patient

};