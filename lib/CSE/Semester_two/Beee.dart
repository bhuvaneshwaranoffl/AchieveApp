import 'package:achieve/CSE/Semester_two/notes/BEEENotes.dart';
import 'package:achieve/CSE/Semester_two/question/BeeeQues.dart';
import 'package:flutter/material.dart';
class BEEE extends StatefulWidget {
  const BEEE({Key? key}) : super(key: key);

  @override
  State<BEEE> createState() => _BEEEState();
}

class _BEEEState extends State<BEEE> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("BEEE"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
           BEEEQues(),
          BEEENotes()
        ],
      ),
    ),
  );
}
