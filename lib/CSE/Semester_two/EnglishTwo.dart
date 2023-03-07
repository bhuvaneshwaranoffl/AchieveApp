import 'package:achieve/CSE/Semester_two/notes/EnglishTwoNotes.dart';
import 'package:achieve/CSE/Semester_two/question/EnglishTwoQues.dart';
import 'package:flutter/material.dart';
class EnglishTwo extends StatefulWidget {
  const EnglishTwo({Key? key}) : super(key: key);

  @override
  State<EnglishTwo> createState() => _EnglishTwoState();
}

class _EnglishTwoState extends State<EnglishTwo> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("PROFESSIONAL ENGLISH II"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
            EnglishTwoQues(),
          EnglishTwoNotes()
        ],
      ),
    ),
  );
  }

