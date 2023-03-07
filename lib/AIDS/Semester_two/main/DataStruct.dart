import 'package:achieve/AIDS/Semester_two/notes/DataStructNotes.dart';
import 'package:achieve/AIDS/Semester_two/question/DataStruct/ques.dart';
import 'package:flutter/material.dart';

class DataStruct extends StatefulWidget {
  const DataStruct({Key? key}) : super(key: key);

  @override
  State<DataStruct> createState() => _DataStructState();
}

class _DataStructState extends State<DataStruct> {
  @override
  Widget build(BuildContext context)=>DefaultTabController(length: 2, child: Scaffold(
    backgroundColor: Colors.deepPurple.shade200,
    appBar: AppBar(
      title: const Text("Data Structures Design"),
      bottom:const TabBar(
        tabs: [
          Tab(text: "Big ques", height: 80, icon:Icon(Icons.arrow_forward)),
          Tab(text: "Notes",height: 80,   icon:Icon(Icons.arrow_back))
        ],
      ),
    ),
    body: const TabBarView(
      children: [
                   DataStructQues(),
                  DataStructNotes()
      ],
    ),

  ));
}
