import 'package:flutter/material.dart';
import 'package:pro_health/configs/routes.dart';
import 'package:pro_health/app/app_view.dart';
import 'package:pro_health/base/utils/constants.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: kBaseColor,
        fontFamily: 'Nunito',
      ),
      home: HomeScreen(),
      routes: routes,
    );
  }
}