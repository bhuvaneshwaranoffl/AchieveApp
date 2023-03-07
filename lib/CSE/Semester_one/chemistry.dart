import 'package:achieve/CSE/Semester_one/Notes/ChemistryNotes.dart';
import 'package:achieve/CSE/Semester_one/Question/ChemistryQuestion.dart';
import 'package:flutter/material.dart';
class Chemistry extends StatefulWidget {
  const Chemistry({Key? key}) : super(key: key);

  @override
  State<Chemistry> createState() => _ChemistryState();
}

class _ChemistryState extends State<Chemistry> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("ENGINEERING CHEMISTRY"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
                   ChemistryQues(),
                   ChemistryNotes()
        ],
      ),
    ),
  );
}
