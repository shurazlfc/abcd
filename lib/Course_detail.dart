// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CourseDetail extends StatelessWidget {
  static const String routeName = 'CourseDetail';

  const CourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var networkImageCsit =
        "https://imgs.search.brave.com/xahfYKuqWlg7AYLaE5fFsH7R9K2FVqCK62ORxEIGzmg/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vamVycmljay9p/bWFnZS91cGxvYWQv/Y19zY2FsZSxxX2F1/dG8vdG50ZXBxc25t/NGw4OW9jemI1dDIu/anBn";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 20,
          title: const Text('Course Detail'),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 248, 154, 154),
          child: ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              Container(
                color: Colors.white,
                child: ListTile(
                  title: const Text(
                    'Course Detail',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //       shape: BoxShape.rectangle, color: Colors.black),
              //   child: Text('Detail Description'),
              //
              Container(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(networkImageCsit),
                  ),
                  title: const Text('CSIT'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => WebviewScaffold(
                              url: "https://www.kbc.edu.np/program/1/",
                              appBar: AppBar(
                                title: Text("CSIT"),
                              ),
                            )));
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(networkImageCsit),
                  ),
                  title: const Text('BCA'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => WebviewScaffold(
                              url: "https://www.kbc.edu.np/program/4/",
                              appBar: AppBar(
                                title: Text("BCA"),
                              ),
                            )));

                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
