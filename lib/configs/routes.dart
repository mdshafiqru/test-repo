import 'package:flutter/material.dart';
import 'package:pro_health/doctor/views/Dashboard.dart';
import 'package:pro_health/app/app_view.dart';
import 'package:pro_health/doctor/views/signin.dart';
import 'package:pro_health/doctor/views/bottombar/Appointment.dart';
import 'package:pro_health/doctor/views/bottombar/DoctorProfile.dart';
import 'package:pro_health/doctor/views/bottombar/Home.dart';
import 'package:pro_health/doctor/views/bottombar/PharmaUpdates.dart';
import 'package:pro_health/doctor/views/bottombar/Prescription.dart';
import 'package:pro_health/doctor/views/dashbox/ConsultationHistory.dart';
import 'package:pro_health/doctor/views/dashbox/Earnings.dart';
import 'package:pro_health/doctor/views/dashbox/OnlineConsultancy.dart';
import 'package:pro_health/doctor/views/dashbox/DrugInfo.dart';
import 'package:pro_health/doctor/views/draweritem/AboutUs.dart';
import 'package:pro_health/doctor/views/draweritem/ActivityStatus.dart';
import 'package:pro_health/doctor/views/draweritem/ContactUs.dart';
import 'package:pro_health/doctor/views/draweritem/Help.dart';
import 'package:pro_health/doctor/views/draweritem/PrivacyAndPolicy.dart';
import 'package:pro_health/doctor/views/draweritem/Reviews.dart';
import 'package:pro_health/doctor/views/draweritem/Settings.dart';
import 'package:pro_health/doctor/views/draweritem/TermsConditions.dart';
import 'package:pro_health/doctor/views/subpages/AccountVerify.dart';
import 'package:pro_health/doctor/views/subpages/CreateNewAccount.dart';
import 'package:pro_health/doctor/views/subpages/ForgotPassword.dart';
import 'package:pro_health/doctor/views/subpages/NewAccountPassword.dart';
import 'package:pro_health/doctor/views/subpages/NewAccountVerify.dart';
import 'package:pro_health/doctor/views/subpages/TermsAndConditions.dart';
import 'package:pro_health/doctor/views/subpages/UpdatePassword.dart';
import 'package:pro_health/doctor/views/subpages/Withdraw.dart';
import 'package:pro_health/doctor/views/subpages/WithdrawDetails.dart';

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