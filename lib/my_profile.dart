// ignore_for_file: prefer_const_constructors, unused_import

import 'package:abcd/home_page.dart';
import 'package:abcd/profile_detail.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  static const String routeName = '/HomePage';
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 20,
          title: const Text('My Profile'),
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.navigate_next),
          //     tooltip: 'Go to the next page',
          //     onPressed: () {
          //       Navigator.pushNamed(context, HomePage.routeName);
          //     },
          //   ),
          // ],
        ),
        body: ProfileDetail());
  }
}








//dead codes 


// Navigator.push(context, MaterialPageRoute<void>(
              //   builder: (BuildContext context) {
              //     return Scaffold(
              //       appBar: AppBar(
              //         title: const Text('Next page'),
              //       ),
              //       body: const Center(
              //         child: Text(
              //           'This is the next page',
              //           style: TextStyle(fontSize: 24),
              //         ),
              //       ),
              //     );
              //   },
              // ));

          //      IconButton(
          //   icon: const Icon(Icons.add_alert),
          //   tooltip: 'Show Snackbar',
          //   onPressed: () {
          //     ScaffoldMessenger.of(context)
          //         .showSnackBar(const SnackBar(content: Text('')));
          //   },
          // ),