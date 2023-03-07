import 'package:achieve/CSE/Semester_one/Notes/MatrixNotes.dart';
import 'package:achieve/CSE/Semester_one/Question/MatrixQuestion.dart';
import 'package:flutter/material.dart';
class Matrix extends StatefulWidget {
  const Matrix({Key? key}) : super(key: key);

  @override
  State<Matrix> createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("MATRIX AND CALCULUS"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
        MatrixQues(),
          MatrixNotes()
        ],
      ),
    ),
  );
}
