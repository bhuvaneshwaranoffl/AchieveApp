import 'package:achieve/BME/Semester_two/Notes/BioSciNotes.dart';
import 'package:achieve/BME/Semester_two/Question/BioMedQues.dart';
import 'package:flutter/material.dart';

class BioScience extends StatefulWidget {
  const BioScience({Key? key}) : super(key: key);

  @override
  State<BioScience> createState() => _BioScienceState();
}

class _BioScienceState extends State<BioScience> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("Bio Science For Medical Engineering"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "Big ques", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "Notes",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          BioMedQues(),
            BioSciNotes(),
        ],
      ),
    ),
  );
}

