import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:k8/model/subject_list_dto.dart';
import 'package:k8/model/syllabush_list.dart';
import '../constants/page_titles.dart';
import '../widgets/app_scaffold.dart';

class SyllabusPage extends StatefulWidget {

  @override
  _SyllabusPageState createState() => _SyllabusPageState();
}



class _SyllabusPageState extends State<SyllabusPage> {
  List sub=[];
  List imgurl=[];
  List credit=[];
  bool visility=true;
  List listsub;
  bool sort=true;
  Future postRequest() async {
    var courseurl='https://cors-anywhere.herokuapp.com/';
    var url =
        'https://cors-anywhere.herokuapp.com/http://164.52.198.42:8080/k8school/api/v1/dashboard/app-student-task-content';
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
      var res=SyllabushList.fromJson(jsonDecode(response.body));
       listsub=res.dashboardStudentDTO.studentTaskDTO.subjectList;

       setsub(listsub);

      visility=false;
      setState(() {
        sub;
        imgurl;
        visility;
        credit;
        listsub;
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

  onSortColum(int columnIndex, bool ascending) async {
    if (columnIndex == 1) {
      sub=[];
      credit=[];
      if (ascending) {
       await listsub.sort((a, b) => a.subjectName.compareTo(b.subjectName));
            setList(listsub);
      } else {
        await  listsub.sort((a, b) => b.subjectName.compareTo(a.subjectName));
            setList(listsub);

      }
    }
  }

  Widget build(BuildContext context) {

    return AppScaffold(

      body: Stack(children: [

        ListView(
          padding: const EdgeInsets.all(16),
          children: [
            PaginatedDataTable(
              showCheckboxColumn: false,
              sortAscending: sort,
              sortColumnIndex: 1,
              header: Text('View Syllabus',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              rowsPerPage: 5,
              columns: [
                DataColumn(label: Text('S.No.')),
                DataColumn(label: Text('Opted/Selected Courses'), numeric: false,
                     onSort: (columnIndex, ascending) {
                    setState(() {
                       sort = !sort;
                          });
                    onSortColum(columnIndex, ascending);
                 }),
                DataColumn(label: Text('Credits'), numeric: false),
                DataColumn(label: Text('View Syllabus'), numeric: false),
              ],
              source: _DataSource(context,sub,credit),
            ),
          ],
        ),
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
      ],),
    );
  }

  void setsub(List listsub) {
    for(var i in listsub){
      sub.add(i.subjectName);
      imgurl.add(i.subjectIcon);
      if(i.duration ==12){
        credit.add(1);
      } else if(i.duration ==6){
        credit.add(0.5);
      }else if(i.duration ==3){
        credit.add(0.25);
      }
    }
  }

  void setList(List listsub) {
    for(var i in listsub){
      sub.add(i.subjectName);
      imgurl.add(i.subjectIcon);
      if(i.duration ==12){
        credit.add(1);
      } else if(i.duration ==6){
        credit.add(0.5);
      }else if(i.duration ==3){
        credit.add(0.25);
      }
      print(i.subjectName+"ppppp");
    }
  }
}

class _Row {
  _Row(
      this.valueA,
      this.valueB,
      this.valueC,
      this.valueD,
      );

  final int valueA;
  final String valueB;
  final String valueC;
  final String valueD;
  bool selected = false;
}

class _DataSource extends DataTableSource {
  final BuildContext context;
  List<_Row> _rows;

  int _selectedCount = 0;
  _DataSource(this.context, List sub, List credit) {
    _rows=new List<_Row>();
    for(int i=0;i<sub.length;i++){
      _rows.add(_Row(i+1, sub[i].toString(), credit[i].toString(), "valueD"));
    }

   /* _rows = <_Row>[
      _Row(1,'Cell A1', 'CellB1', 'CellC1'),
      _Row(2,'Cell A2', 'CellB2', 'CellC2',),
      _Row(3,'Cell A3', 'CellB3', 'CellC3', ),
      _Row(4,'Cell A4', 'CellB4', 'CellC4',),
    ];*/

  }
  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(row.valueA.toString())),
        DataCell(Text(row.valueB)),
        DataCell(Text(row.valueC)),
        DataCell(Icon(
          Icons.remove_red_eye,
          color: Colors.blueAccent,
          size: 16.0,
        ),),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
