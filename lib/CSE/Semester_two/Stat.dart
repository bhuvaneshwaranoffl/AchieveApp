import 'package:achieve/CSE/Semester_two/notes/StatNotes.dart';
import 'package:achieve/CSE/Semester_two/question/Statques.dart';
import 'package:flutter/material.dart';
class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("Statistics and Numerical Method"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children:[
          StatQues(),
          StatNotes()
        ],
      ),
    ),
  );
}
