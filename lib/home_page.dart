// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:abcd/Course_detail.dart';
import 'package:abcd/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/avd.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/Home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var networkimageurl =
        "https://imgs.search.brave.com/HpatzcDwfovkbIdVZTze4BSaNadzd-w9eyaRlxmVNgU/rs:fit:500:500:1/g:ce/aHR0cHM6Ly93d3cu/anVrc3VuLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMS8w/Ny9LYXRobWFuZHUt/QmVybkhhcmR0LUNv/bGxlZ2UtTG9nby5q/cGc";
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            {
              const snackBar = SnackBar(content: Text('Button Pressed'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          items: [
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'fees',
              icon: Icon(Icons.money),
            ),
            BottomNavigationBarItem(
              label: 'Location',
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: 'Library',
              icon: Icon(Icons.library_books),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top.webp'))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    height: 60,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyProfile.routeName);
                            },
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(networkimageurl),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kathmandu Bernhardt College",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ]),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyProfile.routeName);
                            },
                            child: Card(
                              shadowColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Image.network(networkimageurl)),
                                  Text(
                                    'College Details',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, CourseDetail.routeName);
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: SvgPicture.asset(
                                          'assets/images/course.webp')),
                                  // Expanded(
                                  //     child: Image.asset(
                                  //         'assets/images/course.webp')),
                                  Text(
                                    'Course',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Image.asset(
                                        'assets/images/attendence.webp')),
                                Text(
                                  'Attendence',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Image.asset(
                                        'assets/images/result.webp')),
                                Text(
                                  'Result',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child:
                                        Image.asset('assets/images/tour.webp')),
                                Text(
                                  'Tour',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child:
                                        Image.asset('assets/images/lunch.png')),
                                Text(
                                  'Lunch',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                        crossAxisCount: 2),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
