import 'package:achieve/CSE/Semester_two/notes/GraphicsNotes.dart';
import 'package:achieve/CSE/Semester_two/question/GraphicsQues.dart';
import 'package:flutter/material.dart';
class Graphics extends StatefulWidget {
  const Graphics({Key? key}) : super(key: key);

  @override
  State<Graphics> createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
  @override
  Widget build(BuildContext context)  => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("ENGINEERING GRAPHICS"),
        bottom:const TabBar(
          tabs: [
            Tab(text: "BIG QUESTION", height: 80, icon:Icon(Icons.arrow_forward)),
            Tab(text: "NOTES",height: 80,   icon:Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
           GraphicsQues(),
          GraphicsNotes()
        ],
      ),
    ),
  );
}
