import 'package:achieve/AIDS/Semester_two/main/DataStruct.dart';
import 'package:achieve/CSE/Semester_one/English.dart';
import 'package:achieve/CSE/Semester_one/physics.dart';
import 'package:achieve/CSE/Semester_two/Beee.dart';
import 'package:achieve/CSE/Semester_two/Graphics.dart';
import 'package:achieve/CSE/Semester_two/Physics.dart';
import 'package:achieve/CSE/Semester_two/Stat.dart';
import 'package:flutter/material.dart';
class AiSemTwo extends StatefulWidget {
  const AiSemTwo({Key? key}) : super(key: key);

  @override
  State<AiSemTwo> createState() => _AiSemTwoState();
}

class _AiSemTwoState extends State<AiSemTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text("SEMESTER TWO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfessionalEnglishOne()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("Professional English II",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Stat()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("Statistics & Numerical",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context)=>PhysicsTwo()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("Physics",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Graphics()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("Engineering Graphics",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BEEE()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("BEEE",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DataStruct()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("Data Structures Design",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
