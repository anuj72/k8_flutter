import 'package:flutter/material.dart';

class subjectList extends StatefulWidget {
  @override
  _subjectListState createState() => _subjectListState();
}

class _subjectListState extends State<subjectList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Row(
            children: <Widget>[
              Text("ehgvfgyv"),
              SizedBox(
                width: 16.0,
              ),
              Text(
               "hjbvgvgvg",
              ),
            ],
          ),
          subtitle: Text("hgjfytfyv"),

          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ),
    );
  }
}
