// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import

import 'package:abcd/Loginscreens_Register/login_screen.dart';
import 'package:abcd/Loginscreens_Register/loginorregister.dart';
import 'package:abcd/home_page.dart';
import 'package:abcd/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: LoginPage.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
