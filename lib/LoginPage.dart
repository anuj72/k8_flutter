import 'dart:developer';
import 'package:k8/utils/pref.dart';
import 'package:k8/utils/responsiveLayout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'dashboard.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.purpleAccent, Colors.blueAccent],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/school2.png"),
                fit: BoxFit.cover,
              )),
            ),
            flex: ResponsiveLayout.isVerySmallScreen(context)
                ? 0
                : ResponsiveLayout.isSmallScreen(context)
                    ? 0
                    : ResponsiveLayout.isMediumScreen(context)
                        ? 3
                        : 7,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    ResponsiveLayout.isVerySmallScreen(context) ? 10 : 60,
                    ResponsiveLayout.isVerySmallScreen(context) ? 10 : 60,
                    ResponsiveLayout.isVerySmallScreen(context) ? 10 : 90,
                    ResponsiveLayout.isVerySmallScreen(context) ? 10 : 60),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 600,
                    width: 500,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/bg_splash_grey.png"),
                      fit: BoxFit.cover,
                    )),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 43, 0, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 15,
                                          color: Colors.black26,
                                          spreadRadius: 5)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                          child: Image.asset(
                                              'assets/images/k8.png')),
                                    ),
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                ResponsiveLayout.isVerySmallScreen(context)
                                    ? 27
                                    : 80,
                                0,
                                ResponsiveLayout.isVerySmallScreen(context)
                                    ? 27
                                    : 80,
                                20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(23.0),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    labelText: "Email",
                                    prefixIcon: Icon(Icons.account_circle),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                  child: TextField(
                                      decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    labelText: "Password",
                                    prefixIcon: Icon(Icons.vpn_key),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 50, 30, 50),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: RaisedButton(
                                      onPressed: () async {
                                        addStringToSF(
                                            "email", "anuj@gmail.com");
                                        var email = getStringValuesSF("email");
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        log("kkkkkkkk" + email.toString());
                                        String intValue =
                                            prefs.getString('email') ?? "0";
                                        log("ooooooo" + intValue.toString());
                                        await removeValuesSF("email");
                                        await clearAllData();
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));

                                        log("ooooooo" + intValue.toString());
                                        log("ooooooo" + intValue.toString());
                                        log("ooooooo" + intValue.toString());
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) => Dashboard()));

                                         Future<http.Response> postRequest () async {
                                        /*   var xhr = new XMLHttpRequest();
                                           xhr.open('POST', url);
                                           xhr.onreadystatechange = function () {
                                             if (xhr.readyState > 3 && +xhr.status === 200) { success(xhr.responseText); }
                                           };
                                           xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                           xhr.send(params);
                                           return xhr;*/
                                          var url ='http://164.52.198.42:8080/k8school/api/v1/common/login';

                                          Map data = {
                                            "authentication": {
                                              "hash": "sladfjlkasldflsaj",
                                              "userType": "COMMON",
                                              "userId": "",
                                              "studentId": "",
                                              "parentId": ""
                                            },
                                            "requestData": {
                                              "loginDTO": {
                                                "email": "anujwebhost@gmail.com",
                                                "password": "123456",
                                                "captcha": "123456",
                                                "bypass":"true"
                                              }
                                            }
                                          };
                                          //encode Map to JSON
                                          var body = json.encode(data);

                                          var response = await http.post(url,
                                              headers: {"Content-Type": "application/x-www-form-urlencoded"},
                                              body: body
                                          );
                                          print("${response.statusCode}");
                                          print("${response.body}");
                                          return response;
                                        }
                                      var data=  await postRequest();
                                        log("ppppppp"+data.body);
                                        print("ppppppp"+data.body);
                                      },
                                      color: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              Colors.blueAccent,
                                              Colors.purpleAccent
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                        ),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                              minWidth: 88.0,
                                              minHeight:
                                                  55.0), // min sizes for Material buttons
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'LOGIN',
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            flex: 5,
          ),
        ],
      ),
    );
  }
}
