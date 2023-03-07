
import 'package:achieve/sem/semone.dart';
import 'package:achieve/sem/semtwo.dart';
import 'package:flutter/material.dart';

class SemesterTabOne extends StatefulWidget {
  const SemesterTabOne({Key? key}) : super(key: key);

  @override
  State<SemesterTabOne> createState() => _SemesterTabOneState();
}

class _SemesterTabOneState extends State<SemesterTabOne> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
    appBar: AppBar(
      title: const Text("Semester"),
      bottom:const TabBar(
        tabs: [
          Tab(text: "Semester 1", height: 80, icon:Icon(Icons.arrow_forward)),
          Tab(text: "Semester 2",height: 80,   icon:Icon(Icons.arrow_back))
        ],
      ),
    ),
      body: const TabBarView(
        children: [
           SemesterOne(),
          SemesterTwo()
        ],
      ),
  ),
  );
}
