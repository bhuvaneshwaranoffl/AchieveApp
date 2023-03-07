import 'package:achieve/CSE/Semester_one/Notes/PythonNotes.dart';
import 'package:achieve/CSE/Semester_one/Question/PythonQuestion.dart';
import 'package:flutter/material.dart';
class Python extends StatefulWidget {
  const Python({Key? key}) : super(key: key);

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("PYTHON"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
                 PythonQues(),
                 PythonNotes()
        ],
      ),
    ),
  );
}
