import 'package:achieve/CSE/Semester_two/notes/ProgramNotes.dart';
import 'package:achieve/CSE/Semester_two/question/PhysicsTwoQues.dart';
import 'package:flutter/material.dart';

class PhysicsTwo extends StatefulWidget {
  const PhysicsTwo({Key? key}) : super(key: key);

  @override
  State<PhysicsTwo> createState() => _PhysicsTwoState();
}

class _PhysicsTwoState extends State<PhysicsTwo> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("PHYSICS FOR INFORMATION SCIENCE"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
           PhysicsTwoQues(),
          ProgramNotes()
        ],
      ),
    ),
  );
}
