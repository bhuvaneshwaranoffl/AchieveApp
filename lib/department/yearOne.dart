import 'package:achieve/AIDS/Semester_two/main/AiSemTwo.dart';
import 'package:achieve/BME/Semester_two/main/BmeSemTwo.dart';
import 'package:achieve/semesters/tabBarone.dart';
import 'package:flutter/material.dart';
class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title:const Text(" Department"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SemesterTabOne()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("CSE",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BmeSemTwo()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("BME",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context)=>AiSemTwo()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("AI&DS",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ElevatedButton(onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //       padding: const EdgeInsets.all(20),
            //       minimumSize: const Size(250, 10)),
            //   child: const Text("ECE",
            //     style: TextStyle(fontSize: 30),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}