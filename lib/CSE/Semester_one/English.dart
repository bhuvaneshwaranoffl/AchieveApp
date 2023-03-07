import 'package:achieve/CSE/Semester_one/Notes/EnglishNotes.dart';
import 'package:achieve/CSE/Semester_one/Question/EnglishQuestion.dart';
import 'package:flutter/material.dart';
class ProfessionalEnglishOne extends StatefulWidget {
  const ProfessionalEnglishOne({Key? key}) : super(key: key);

  @override
  State<ProfessionalEnglishOne> createState() => _ProfessionalEnglishOneState();
}

class _ProfessionalEnglishOneState extends State<ProfessionalEnglishOne> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("PROFESSIONAL ENGLISH"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
                EngQuestion(),
                EngNotes()
        ],
      ),
    ),
  );
}
