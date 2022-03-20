// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:abcd/Loginscreens_Register/loginorregister.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'Loginscreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   shadowColor: Colors.black,
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          // ),
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, LoginPage.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              // color: Colors.white,
              height: 50,
              width: 70,
              child: Row(children: [Icon(Icons.chevron_left), Text("Back")]),
            ),
          ),
        ],
      )),
    );
  }
}
