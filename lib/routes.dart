// ignore_for_file: prefer_const_constructors, unused_local_variable

// import 'dart:js';

import 'package:abcd/Course_detail.dart';
import 'package:abcd/Loginscreens_Register/login_screen.dart';
import 'package:abcd/Loginscreens_Register/loginorregister.dart';
import 'package:abcd/home_page.dart';
import 'package:abcd/my_profile.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case MyProfile.routeName:
        return MaterialPageRoute(builder: (context) => MyProfile());
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => HomePage());

      case CourseDetail.routeName:
        return MaterialPageRoute(builder: (context) => CourseDetail());

      case LoginPage.routeName:
        return MaterialPageRoute(builder: (context) => LoginPage());

      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      default:
        return MaterialPageRoute(builder: (context) => LoginScreen());
    }
  }
}
