import 'package:achieve/BME/Semester_two/main/BioSciences.dart';
import 'package:achieve/BME/Semester_two/main/MedicalPhysics.dart';
import 'package:achieve/CSE/Semester_two/Beee.dart';
import 'package:achieve/CSE/Semester_two/EnglishTwo.dart';
import 'package:achieve/CSE/Semester_two/Graphics.dart';
import 'package:achieve/CSE/Semester_two/Stat.dart';
import 'package:flutter/material.dart';
class BmeSemTwo extends StatefulWidget {
  const BmeSemTwo({Key? key}) : super(key: key);

  @override
  State<BmeSemTwo> createState() => _BmeSemTwoState();
}

class _BmeSemTwoState extends State<BmeSemTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("SEMESTERTWO"),
      ),
      backgroundColor: Colors.deepPurple.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BEEE() ));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "BEEE",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BioScience()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "Bio Sciences ",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Stat()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "Statistics & Numerical",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Graphics()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "Engineering Graphics",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EnglishTwo()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "Professional English II",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MedicalPhy()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "Medical physics",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
