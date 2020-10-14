import 'dart:async';

import 'package:flutter/material.dart';
import 'package:k8/LoginPage.dart';


class ImageRotate extends StatefulWidget {
  @override
  _ImageRotateState createState() => _ImageRotateState();
}
class _ImageRotateState extends State<ImageRotate>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())));
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );


    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
       child: new Container(

          child: Card(
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: AnimatedBuilder(
              animation: animationController,
              child: (CircleAvatar(
                child: Padding(
                  child: (Image.asset('assets/images/k8.png')),
                  padding: EdgeInsets.all(20),
                ),
                radius: 50,
                backgroundColor: Colors.white,
              )),
                builder: (BuildContext context, Widget _widget) {
                  return new Transform.rotate(
                    angle: animationController.value * 6.3,
                    child: _widget,
                  );
                }
            ),
          ),
        ),


    );
  }


}