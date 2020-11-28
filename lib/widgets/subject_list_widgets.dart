import 'package:flutter/material.dart';

class subjectList extends StatefulWidget {

  final String i;
  final String sub,credit,imgurl;
  subjectList(this.i, this.sub, this.credit, this.imgurl);

  @override
  _subjectListState createState() => _subjectListState(i,sub,credit,imgurl);
}

class _subjectListState extends State<subjectList> {
  final String iv;
  final String subv,creditv,imgurlv;
  _subjectListState(this.iv,this.subv,this.creditv,this.imgurlv);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(

         children: [
           Padding(
             padding: const EdgeInsets.all(4.0),
             child: CircleAvatar(
               radius: 32,
               backgroundColor: Colors.blueAccent,
               child: CircleAvatar(
                 radius: 30,
                 backgroundImage: NetworkImage(imgurlv),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Column(children: [
               Container(child: Text((iv+". "+subv),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,))),
               Container(child: Text(("Credits: "+creditv),style: TextStyle(fontSize: 12))),
             ],),
           )
         ],

        ),
      ),
    );
  }
}
