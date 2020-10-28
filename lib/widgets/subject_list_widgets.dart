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
        child: ListTile(
          leading: Container(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imgurlv),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: Colors.blueAccent,
                width: 1.0,
              ),
            ),
          ),
          title: Row(
            children: <Widget>[
              Text(iv.toString()+". "+ subv,style: TextStyle(fontSize: 14),),
              SizedBox(
                width: 16.0,
              ),
             /* Text(
               "Credit"+" "+creditv,
              ),*/
            ],
          ),
          subtitle: Text("Credit"+" : "+creditv,style: TextStyle(fontSize: 12)),

          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ),
    );
  }
}
