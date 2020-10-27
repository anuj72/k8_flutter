import 'package:flutter/material.dart';
import 'package:k8/LoginPage.dart';

import 'constants/route_names.dart';
import 'pages/syllabush_page.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';
import 'pages/slideshow_page.dart';
import 'widgets/app_route_observer.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(visualDensity: VisualDensity.comfortable,fontFamily: 'poppins'),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.indigo,
            // ...
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )),
          child: Center(
            child: LoginPage(),
          ),


        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.send),
          backgroundColor: Colors.green,
        ),

      ),

    );
  }
}


