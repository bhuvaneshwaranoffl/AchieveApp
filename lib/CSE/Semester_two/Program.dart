import 'package:achieve/CSE/Semester_two/notes/ProgramNotes.dart';
import 'package:achieve/CSE/Semester_two/question/PrpgramQues.dart';
import 'package:flutter/material.dart';
class Program extends StatefulWidget {
  const Program({Key? key}) : super(key: key);

  @override
  State<Program> createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("PROGRAMMING IN C"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          ProgramQues(),
          ProgramNotes()
        ],
      ),
    ),
  );
}
