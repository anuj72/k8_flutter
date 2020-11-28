import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:k8/model/subject_list_dto.dart';
import 'package:k8/utils/responsiveLayout.dart';

import '../constants/page_titles.dart';
import '../widgets/app_scaffold.dart';




class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List sub=[];
  List imgurl=[];
  bool visility=true;
  Future postRequest() async {
    var courseurl='https://cors-anywhere.herokuapp.com/';
    var url =
        'https://cors-anywhere.herokuapp.com/http://164.52.198.42:9090/k8school/api/v1/dashboard/app-student-subject-list';
    Map data = {
      "authentication": {
        "hash": "sgffyiuey",
        "userId": "1229",
        "userType": "STUDENT"
      }
    };
    //encode Map to JSON
    var body = json.encode(data);
    var response = await http.post(url, headers: {"Content-Type": "application/json"}, body: body);
    if(response.statusCode==200){
      print("sssss${response.statusCode}");
      print("sssss${response.body}");
      var res=SubjectListDto.fromJson(jsonDecode(response.body));
      List listsub=res.studentSubjectDTOList;
      for(var i in listsub){
       sub.add(i.subjectName);
       imgurl.add(i.imgURl);
      }
      visility=false;
      setState(() {
       sub;
       imgurl;
      visility;
      });

    }else{
      print("sssss${response.statusCode}");
    }

  }
@override
  void initState() {
    super.initState();
    postRequest() ;
  }
  @override
  Widget build(BuildContext context) {



    return AppScaffold(
      pageTitle: PageTitles.home,
      body: Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  color: Colors.transparent,
                  height: 100.0,
                  child: visility?SpinKitWave(
                    itemBuilder: (BuildContext context, int index) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          color: index.isEven
                              ? Colors.blueAccent
                              : Colors.purpleAccent,
                        ),
                      );
                    },
                  ):Container(height: 0,width: 0,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        crossAxisCount: ResponsiveLayout.isVerySmallScreen(context)
                            ? 2
                            : ResponsiveLayout.isSmallScreen(context)
                            ? 3
                            : ResponsiveLayout.isMediumScreen(context)
                            ? 4
                            : 5),
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: EdgeInsets.all(
                            ResponsiveLayout.isVerySmallScreen(context)
                                ? 7
                                : ResponsiveLayout.isSmallScreen(context)
                                ? 10
                                : ResponsiveLayout.isMediumScreen(context)
                                ? 15
                                : 20),
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                        bottomLeft: const Radius.circular(15.0),
                                        bottomRight: const Radius.circular(15.0),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 6, 10, 5),
                                    child: Center(
                                      child: Center(child: Text(sub[index].toString(),style: TextStyle(fontSize: 10),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      imgurl[index]),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(15.0),
                                    topRight: const Radius.circular(15.0),
                                    bottomLeft: const Radius.circular(15.0),
                                    bottomRight: const Radius.circular(15.0))),
                          ),
                        ),
                      );
                    },
                    itemCount: sub.length,
                  ),
                ),
              ),

            ],
          )),

    );
  }
}
