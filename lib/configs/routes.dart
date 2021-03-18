import 'package:flutter/material.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/views/dashboard/dashboard_doctor.dart';
import 'package:pro_health/app/app_view.dart';
import 'package:pro_health/doctor/views/auth/signin/signin_doctor.dart';
import 'package:pro_health/doctor/views/bottombar/appointment/appointment_doctor.dart';
import 'package:pro_health/doctor/views/bottombar/profile/profile_doctor.dart';
import 'package:pro_health/doctor/views/bottombar/home/home_doctor.dart';
import 'package:pro_health/doctor/views/bottombar/pharma_updates/pharma_updates.dart';
import 'package:pro_health/doctor/views/bottombar/prescription/prescription.dart';
import 'package:pro_health/doctor/views/dashboard/consultation_history/consultation_history.dart';
import 'package:pro_health/doctor/views/dashboard/earnings/earnings.dart';
import 'package:pro_health/doctor/views/dashboard/online_consultancy/online_consultancy.dart';
import 'package:pro_health/doctor/views/dashboard/drug_info/drug_info.dart';
import 'package:pro_health/doctor/views/drawer/AboutUs.dart';
import 'package:pro_health/doctor/views/drawer/ActivityStatus.dart';
import 'package:pro_health/doctor/views/drawer/ContactUs.dart';
import 'package:pro_health/doctor/views/drawer/Help.dart';
import 'package:pro_health/doctor/views/drawer/PrivacyAndPolicy.dart';
import 'package:pro_health/doctor/views/drawer/Reviews.dart';
import 'package:pro_health/doctor/views/drawer/Settings.dart';
import 'package:pro_health/doctor/views/drawer/TermsConditions.dart';
import 'package:pro_health/doctor/views/auth/forgot_pass/AccountVerify.dart';
import 'package:pro_health/doctor/views/auth/signup/create_account_doctor.dart';
import 'package:pro_health/doctor/views/auth/forgot_pass/ForgotPassword.dart';
import 'package:pro_health/doctor/views/auth/signup/account_password.dart';
import 'package:pro_health/doctor/views/auth/signup/account_verify_new.dart';
import 'package:pro_health/doctor/views/auth/signup/terms_and_conditions.dart';
import 'package:pro_health/doctor/views/auth/forgot_pass/UpdatePassword.dart';
import 'package:pro_health/doctor/views/dashboard/earnings/withdraw.dart';
import 'package:pro_health/doctor/views/dashboard/earnings/WithdrawDetails.dart';
import 'package:pro_health/patient/views/auth/forgot_pass/account_verify_patient.dart';
import 'package:pro_health/patient/views/auth/forgot_pass/forgot_password_patient.dart';
import 'package:pro_health/patient/views/auth/forgot_pass/update_password_patient.dart';
import 'package:pro_health/patient/views/auth/signin/signin_patient.dart';
import 'package:pro_health/patient/views/auth/signup/account_password_patient.dart';
import 'package:pro_health/patient/views/auth/signup/create_account_patient.dart';
import 'package:pro_health/patient/views/auth/signup/naccount_verify_patient.dart';
import 'package:pro_health/patient/views/auth/signup/terms_conditions_patient.dart';
import 'package:pro_health/patient/views/bottombar/appointment/appointment_patient.dart';
import 'package:pro_health/patient/views/bottombar/drug_info/drug_index_patient.dart';
import 'package:pro_health/patient/views/bottombar/message/message_patient.dart';
import 'package:pro_health/patient/views/dashboard/dashboard_patient.dart';
import 'package:pro_health/patient/views/bottombar/home/home_patient.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{

  HomeScreen.tag: (context) => HomeScreen(),

  // Doctor
  SignInDoctor.tag: (context) => SignInDoctor(),
  DashboardDoctor.tag: (context) => DashboardDoctor(),
  Home.tag: (context) => Home(),
  Appointment.tag: (context) => Appointment(),
  PharmaUpdates.tag: (context) => PharmaUpdates(),
  Prescription.tag: (context) => Prescription(),
  ProfileDoctor.tag: (context) => ProfileDoctor(),
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
  DashboardPatient.tag: (context) => DashboardPatient(),
  HomePatient.tag: (context) => HomePatient(),
  ForgotPasswordPatient.tag: (context) => ForgotPasswordPatient(),
  AccountVerifyPatient.tag: (context) => AccountVerifyPatient(mobileno: ''),
  UpdatePasswordPatient.tag: (context) => UpdatePasswordPatient(),
  CreateAccountPatient.tag: (context) => CreateAccountPatient(),
  NewAccountVerifyPatient.tag: (context) => NewAccountVerifyPatient(mobileno: '',),
  AccountPasswordPatient.tag: (context) => AccountPasswordPatient(),
  TermsAndConditionsPatient.tag: (context) => TermsAndConditionsPatient(),
  DrugIndexPatient.tag: (context) => DrugIndexPatient(),
  AppointmentPatient.tag: (context) => AppointmentPatient(),
  MessagePatient.tag: (context) => MessagePatient(),

};