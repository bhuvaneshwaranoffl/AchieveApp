import 'package:achieve/BME/Semester_two/Notes/MedPhyNotes.dart';
import 'package:achieve/BME/Semester_two/Question/MedPhyQues.dart';
import 'package:flutter/material.dart';
class MedicalPhy extends StatefulWidget {
  const MedicalPhy({Key? key}) : super(key: key);

  @override
  State<MedicalPhy> createState() => _MedicalPhyState();
}

class _MedicalPhyState extends State<MedicalPhy> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("Medical Physics"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "Big Question", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "Notes",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          MedPhyQues(),
           MedPhyNotes()
        ],
      ),
    ),
  );
}
