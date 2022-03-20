// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var moreDetails =
        "The vision of KBC has evolved over the years since its inception in 2003. The vision of KBC is to develop the center of excellence for Management, Social Sciences, Technical and Professional education and Research at par with national and international standard, advancing the nation’s interest to fulfill gaps of skilled professional as well as to compete successfully in the global arena. This vision stands today as the underpinning and conceptual framework for the strategies and initiatives outlined in the plan that follows. It also reflects the values and aspirations of a broad cross section of the college Mission The Mission of KBC is to establish it as world class learning center that equip students with the skills, ability and knowledge to successfully compete in their chosen discipline.";
    var CollegeDetails =
        "The vision of KBC has evolved over the years since its inception in 2003. The vision of KBC is to develop the center of excellence for Management, Social Sciences, Technical and Professional education and Research at par with national and international standard, advancing the nation’s interest to fulfill gaps of skilled professional as well as to compete successfully in the global arena. This vision stands today as the underpinning and conceptual framework for the strategies and initiatives outlined in the plan that follows. It also reflects the values and aspirations of a broad cross section of the college Mission The Mission of KBC is to establish it as world class learning center that equip students with the skills, ability and knowledge to successfully compete in their chosen discipline.";
    var networkimageurl1 =
        "https://imgs.search.brave.com/HpatzcDwfovkbIdVZTze4BSaNadzd-w9eyaRlxmVNgU/rs:fit:500:500:1/g:ce/aHR0cHM6Ly93d3cu/anVrc3VuLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMS8w/Ny9LYXRobWFuZHUt/QmVybkhhcmR0LUNv/bGxlZ2UtTG9nby5q/cGc";
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 10,
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Expanded(child: Image.network(networkimageurl)),
                Text(
                  'Kathmandu Bernhardt College',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                Image.network(networkimageurl1),
                Text(CollegeDetails),
                Text(moreDetails),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
