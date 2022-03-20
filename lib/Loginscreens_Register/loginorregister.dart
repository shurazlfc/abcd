// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:abcd/Loginscreens_Register/login_screen.dart';
import 'package:abcd/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'Loginorresgiter';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 142, 62, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                height: 50,
                width: 300,
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Color.fromARGB(255, 240, 142, 62),
                      fontWeight: FontWeight.normal,
                      fontSize: 30),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _containerproperty(),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white),
                // borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 240, 142, 62),
              ),
              // padding: EdgeInsets.all(8),
              height: 70,
              width: 300,
              child: Center(
                  child: Text(
                'Quick Login with Touch ID',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                  child: Container(
                    // margin: EdgeInsets.only(left: 110),
                    // color: Colors.white,
                    height: 100,
                    width: 100,
                    child: Image(
                      image: AssetImage(
                        'assets/images/this.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            // CustomButton(
            //   buttonName: 'Hello',
            //   color: Colors.blue,
            // )
          ],
        ),
      ),
    );
  }

  Container _containerproperty() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 240, 142, 62),
      ),
      // padding: EdgeInsets.all(8),
      height: 50,
      width: 300,
      child: Center(
          child: Text(
        'Register Now',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 30),
      )),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color? color;
  final String buttonName;
  final double? heightofContainer;

  const CustomButton(
      {Key? key, this.color, required this.buttonName, this.heightofContainer})
      : super(key: key);
//  CustomButton(this.color,this.buttonName);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightofContainer,
      decoration: BoxDecoration(color: color),
      child: Text(buttonName),
    );
  }
}
