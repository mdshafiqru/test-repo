import 'package:flutter/material.dart';
import 'package:pro_health/doctor/views/Dashboard.dart';
import 'package:pro_health/app/app_view.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/views/auth/signin/signin_doctor.dart';
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
import 'package:pro_health/patient/views/auth/forgot_pass/account_verify_patient.dart';
import 'package:pro_health/patient/views/auth/forgot_pass/forgot_password_patient.dart';
import 'package:pro_health/patient/views/auth/forgot_pass/update_password_patient.dart';
import 'package:pro_health/patient/views/auth/signin/signin_patient.dart';
import 'package:pro_health/patient/views/auth/signup/account_password_patient.dart';
import 'package:pro_health/patient/views/auth/signup/create_account_patient.dart';
import 'package:pro_health/patient/views/auth/signup/naccount_verify_patient.dart';
import 'package:pro_health/patient/views/auth/signup/terms_conditions_patient.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{

  HomeScreen.tag: (context) => HomeScreen(),

  // Doctor
  SignInDoctor.tag: (context) => SignInDoctor(),
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
  SignInPatient.tag: (context) => SignInPatient(),
  ForgotPasswordPatient.tag: (context) => ForgotPasswordPatient(),
  AccountVerifyPatient.tag: (context) => AccountVerifyPatient(mobileno: ''),
  UpdatePasswordPatient.tag: (context) => UpdatePasswordPatient(),
  CreateAccountPatient.tag: (context) => CreateAccountPatient(),
  NewAccountVerifyPatient.tag: (context) => NewAccountVerifyPatient(mobileno: '',),
  AccountPasswordPatient.tag: (context) => AccountPasswordPatient(),
  TermsAndConditionsPatient.tag: (context) => TermsAndConditionsPatient(),

};